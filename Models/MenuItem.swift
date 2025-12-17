import Foundation

struct MenuItem: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imageURL: String        // ✅ use imageURL consistently
    let basePrice: Decimal
    let category: Category
    let options: [CustomizationOption]

    enum Category: String, CaseIterable {
        case coffee
        case tea
        case bakery
        case coldDrinks
    }
}

