import Foundation

final class CartManager: ObservableObject {
    @Published private(set) var items: [CartItem] = []
    @Published private(set) var pastOrders: [OrderSummary] = []   // order history
    @Published private(set) var favorites: [MenuItem] = []        // favorites
    let taxRate: Decimal = 0.16

    func add(_ menuItem: MenuItem, choices: [CustomizationChoice]) {
        let item = CartItem(menuItem: menuItem, selectedChoices: choices, quantity: 1)
        items.append(item)
    }

    func remove(_ id: UUID) {
        items.removeAll { $0.id == id }
    }

    func updateQuantity(_ id: UUID, quantity: Int) {
        guard let idx = items.firstIndex(where: { $0.id == id }) else { return }
        items[idx].quantity = max(1, quantity)
    }

    func subtotal() -> Decimal {
        items.reduce(0) { acc, item in
            let optionsDelta = item.selectedChoices.reduce(0) { $0 + $1.priceDelta }
            let unitPrice = item.menuItem.basePrice + optionsDelta
            return acc + unitPrice * Decimal(item.quantity)
        }
    }

    func tax() -> Decimal {
        subtotal() * taxRate
    }

    func total() -> Decimal {
        subtotal() + tax()
    }

    func clear() {
        items.removeAll()
    }

    func summary() -> OrderSummary {
        OrderSummary(items: items, subtotal: subtotal(), tax: tax(), total: total())
    }

    // Place order and save to history
    func placeOrder() {
        let order = summary()
        pastOrders.append(order)
        clear()
    }

    // Favorites management
    func toggleFavorite(_ item: MenuItem) {
        if let idx = favorites.firstIndex(where: { $0.id == item.id }) {
            favorites.remove(at: idx)
        } else {
            favorites.append(item)
        }
    }

    func isFavorite(_ item: MenuItem) -> Bool {
        favorites.contains(where: { $0.id == item.id })
    }

    // Update order status
    func updateOrderStatus(_ id: UUID, to status: OrderStatus) {
        if let idx = pastOrders.firstIndex(where: { $0.id == id }) {
            pastOrders[idx].status = status
        }
    }
}

