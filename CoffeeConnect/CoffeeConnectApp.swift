import SwiftUI   // ✅ This line is missing

@main
struct CoffeeConnectApp: App {
    @StateObject private var cartManager = CartManager()
    @StateObject private var rewardsManager = RewardsManager()

    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(cartManager)
                .environmentObject(rewardsManager)
        }
    }
}

