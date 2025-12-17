import Foundation

struct OrderSummary: Identifiable {
    let id = UUID()                 // Unique identifier for SwiftUI Lists
    let items: [CartItem]           // Items in the order
    let subtotal: Decimal           // Subtotal before tax
    let tax: Decimal                // Tax amount
    let total: Decimal              // Final total including tax
    var status: OrderStatus = .pending  // Current order status
}

