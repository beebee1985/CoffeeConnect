import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var cart: CartManager
    @EnvironmentObject var rewards: RewardsManager
    @Environment(\.dismiss) var dismiss

    var summary: OrderSummary {
        cart.summary()
    }

    var body: some View {
        VStack {
            List {
                Section("Items") {
                    ForEach(summary.items) { item in
                        HStack {
                            Text("\(item.menuItem.name) x\(item.quantity)")
                            Spacer()
                            let optionsDelta = item.selectedChoices.reduce(0) { $0 + $1.priceDelta }
                            let unitPrice = item.menuItem.basePrice + optionsDelta
                            let lineTotal = unitPrice * Decimal(item.quantity)
                            Text(lineTotal.asUSD())
                        }
                    }
                }

                Section("Totals") {
                    HStack {
                        Text("Subtotal")
                        Spacer()
                        Text(summary.subtotal.asUSD())
                    }
                    HStack {
                        Text("Tax")
                        Spacer()
                        Text(summary.tax.asUSD())
                    }
                    HStack {
                        Text("Total")
                        Spacer()
                        Text(summary.total.asUSD())
                            .font(.headline)
                    }
                }
            }

            Button("Place Order") {
                let pointsEarned = Int(NSDecimalNumber(decimal: summary.total).intValue)
                rewards.add(points: pointsEarned)
                cart.clear()
                dismiss()
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
        .navigationTitle("Checkout")
    }
}
