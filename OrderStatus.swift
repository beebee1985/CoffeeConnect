import Foundation

enum OrderStatus: String, CaseIterable {
    case pending
    case preparing
    case ready
    case completed

    var displayName: String {
        switch self {
        case .pending: return "Pending"
        case .preparing: return "Preparing"
        case .ready: return "Ready"
        case .completed: return "Completed"
        }
    }
}

