import SwiftUI

struct MenuView: View {
    @StateObject private var vm = MenuViewModel()
    @State private var selectedCategory: MenuItem.Category? = nil
    @State private var presentingItem: MenuItem? = nil

    var body: some View {
        VStack {
            // Category picker
            Picker("Category", selection: $selectedCategory) {
                Text("All").tag(MenuItem.Category?.none)
                ForEach(MenuItem.Category.allCases, id: \.self) { category in
                    Text(category.rawValue.capitalized).tag(Optional(category))
                }
            }
            .pickerStyle(.segmented)
            .padding()

            // Menu grid
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160))], spacing: 16) {
                    ForEach(vm.filteredItems(category: selectedCategory)) { item in
                        MenuCard(item: item) {
                            presentingItem = item
                        }
                    }
                }
                .padding()
            }
        }
        // Detail sheet when tapping a card
        .sheet(item: $presentingItem) { item in
            MenuItemDetail(item: item)
        }
        .navigationTitle("CoffeeConnect")
    }
}

