import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MenuView()
                .tabItem {
                    Label("Menu", systemImage: "list.bullet")
                }

            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }

            OrderHistoryView()
                .tabItem {
                    Label("History", systemImage: "clock")
                }

            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

