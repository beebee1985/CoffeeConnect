import Foundation

final class RewardsManager: ObservableObject {
    @Published private(set) var points: Int = UserDefaults.standard.integer(forKey: "points")

    func add(points newPoints: Int) {
        points += newPoints
        UserDefaults.standard.set(points, forKey: "points")
    }
}

