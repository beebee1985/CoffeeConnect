import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var rewards: RewardsManager

    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .foregroundColor(.blue)

            Text("User Profile")
                .font(.title)
                .fontWeight(.bold)

            Text("Welcome to CoffeeConnect!")
                .font(.subheadline)
                .foregroundColor(.secondary)

            Spacer()

            VStack(spacing: 8) {
                Text("Reward Points: \(rewards.points)")
                    .font(.headline)

                Text("Tier: \(rewards.getTier())")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)

            Spacer()
        }
        .padding()
        .navigationTitle("Profile")
    }
}

