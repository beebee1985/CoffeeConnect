import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        NavigationView {
            List {
                if cartManager.favorites.isEmpty {
                    Text("No favorites yet")
                        .foregroundColor(.secondary)
                } else {
                    ForEach(cartManager.favorites) { item in
                        HStack {
                            AsyncImage(url: URL(string: item.imageURL)) { phase in
                                if let image = phase.image {
                                    image.resizable().scaledToFit().frame(width: 60, height: 60)
                                } else {
                                    ProgressView()
                                }
                            }
                            VStack(alignment: .leading) {
                                Text(item.name).font(.headline)
                                Text(item.basePrice.asUSD()).font(.subheadline)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Favorites")
        }
    }
}

