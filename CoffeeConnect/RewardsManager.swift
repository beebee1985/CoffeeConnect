import Foundation

final class RewardsManager: ObservableObject {
    @Published private(set) var points: Int = 0 {
        didSet {
            UserDefaults.standard.set(points, forKey: "rewardPoints")
        }
    }

    private let pointsKey = "rewardPoints"

    init() {
        self.points = UserDefaults.standard.integer(forKey: pointsKey)
    }

    func add(points: Int) {
        self.points += points
    }

    func getTier() -> String {
        switch points {
        case 0..<100:
            return "Bronze"
        case 100..<500:
            return "Silver"
        case 500..<1000:
            return "Gold"
        default:
            return "Platinum"
        }
    }
}