import SwiftUI

struct OnlineImageCard: View {
    // Put your link here
    let imageURL = URL(string: "https://images.unsplash.com/photo-1588196749597-9ff075ee6b5b")

    var body: some View {
        VStack {
            AsyncImage(url: imageURL) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(12)
            } placeholder: {
                ProgressView() // shows a spinner while loading
            }

            Text("Coffee Muffin")
                .font(.headline)
        }
        .padding()
    }
}

