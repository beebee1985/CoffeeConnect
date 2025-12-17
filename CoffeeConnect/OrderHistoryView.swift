import SwiftUI

struct OrderHistoryView: View {
    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        NavigationView {
            List {
                if cartManager.pastOrders.isEmpty {
                    Text("No past orders yet")
                        .foregroundColor(.secondary)
                        .padding()
                } else {
                    ForEach(cartManager.pastOrders) { order in
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Order #\(String(order.id.uuidString.prefix(6)))")
                                .font(.headline)

                            Text("Status: \(order.status.displayName)")
                                .font(.subheadline)

                            Text("Total: \(order.total.asUSD())")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        .padding(.vertical, 6)
                    }
                }
            }
            .navigationTitle("Order History")
        }
    }
}

