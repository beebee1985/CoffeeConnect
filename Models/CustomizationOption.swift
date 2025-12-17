import Foundation

struct CustomizationOption: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let choices: [CustomizationChoice]
}

struct CustomizationChoice: Identifiable, Hashable {
    let id = UUID()
    let label: String
    let priceDelta: Decimal
}

