import SwiftUI

struct MenuItemDetail: View {
    @EnvironmentObject var cart: CartManager
    let item: MenuItem
    @State private var selections: [CustomizationChoice] = []

    var body: some View {
        Form {
            ForEach(item.options) { option in
                Section(option.name) {
                    ForEach(option.choices) { choice in
                        HStack {
                            Text(choice.label)
                            Spacer()
                            Text("+ KSh \(NSDecimalNumber(decimal: choice.priceDelta))")
                        }
                        .contentShape(Rectangle())
                        .onTapGesture { toggle(choice) }
                        .overlay(
                            Image(systemName: selections.contains(choice) ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(.accentColor)
                                .padding(.trailing), alignment: .trailing
                        )
                    }
                }
            }

            Button("Add to Cart") {
                cart.add(item, choices: selections)
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle(item.name)
    }

    private func toggle(_ choice: CustomizationChoice) {
        if let idx = selections.firstIndex(of: choice) { selections.remove(at: idx) }
        else { selections.append(choice) }
    }
}

