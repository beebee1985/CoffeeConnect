import Foundation

struct CartItem: Identifiable {
    let id = UUID()                        // Unique identifier for SwiftUI Lists
    let menuItem: MenuItem                 // The menu item being ordered
    var selectedChoices: [CustomizationChoice] // Customizations applied to the item
    var quantity: Int                      // Quantity of this item in the cart
}

