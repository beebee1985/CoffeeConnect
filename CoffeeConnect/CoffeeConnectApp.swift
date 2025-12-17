import SwiftUI   // ✅ This line is missing

@main
struct CoffeeConnectApp: App {
    @StateObject private var cartManager = CartManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(cartManager)
        }
    }
}

