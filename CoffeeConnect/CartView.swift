import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    @State private var showConfirmation = false

    var body: some View {
        NavigationView {
            VStack {
                if cartManager.items.isEmpty {
                    Text("Your cart is empty")
                        .foregroundColor(.secondary)
                } else {
                    List {
                        ForEach(cartManager.items) { item in
                            Text("\(item.menuItem.name) x\(item.quantity)")
                        }
                    }

                    Text("Total: \(cartManager.total().asUSD())")
                        .font(.headline)
                        .padding()

                    Button(action: {
                        cartManager.placeOrder()
                        showConfirmation = true
                    }) {
                        Text("Place Order")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding()
                    .alert("Order placed successfully!", isPresented: $showConfirmation) {
                        Button("OK", role: .cancel) { }
                    }
                }
            }
            .navigationTitle("Cart")
        }
    }
}

