import SwiftUI

struct MenuCard: View {
    let item: MenuItem
    let onTap: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // Load image from online link with fallback
            AsyncImage(url: URL(string: item.imageURL)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(height: 120)

                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(height: 120)
                        .clipped()
                        .cornerRadius(12)

                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                        .foregroundColor(.gray)

                @unknown default:
                    EmptyView()
                }
            }

            Text(item.name)
                .font(.headline)

            Text(item.basePrice.asUSD())
                .font(.subheadline)
                .foregroundColor(.secondary)

            Button("Customize") {
                onTap()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .background(.thinMaterial)
        .cornerRadius(16)
        .shadow(radius: 4)
    }
}

