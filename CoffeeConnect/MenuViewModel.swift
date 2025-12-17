import Foundation

final class MenuViewModel: ObservableObject {
    @Published var items: [MenuItem] = SampleData.menuItems   // fixed name

    func filteredItems(category: MenuItem.Category?) -> [MenuItem] {
        guard let category else { return items }
        return items.filter { $0.category == category }
    }
}

