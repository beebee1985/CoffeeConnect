import Foundation

struct SampleData {
    static let menuItems: [MenuItem] = [
        MenuItem(
            name: "Latte",
            imageURL: "https://upload.wikimedia.org/wikipedia/commons/7/7e/Caff%C3%A8_Latte.jpg",
            basePrice: 3.50,
            category: .coffee,
            options: []
        ),
        MenuItem(
            name: "Cappuccino",
            imageURL: "https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG",
            basePrice: 3.75,
            category: .coffee,
            options: []
        ),
        MenuItem(
            name: "Green Tea",
            imageURL: "https://upload.wikimedia.org/wikipedia/commons/7/7d/Green_tea_leaves.jpg",
            basePrice: 2.50,
            category: .tea,
            options: []
        ),
        MenuItem(
            name: "Croissant",
            imageURL: "https://upload.wikimedia.org/wikipedia/commons/6/6f/Croissant-Petr-Kratochvil.jpg",
            basePrice: 2.00,
            category: .bakery,
            options: []
        )
    ]
}

