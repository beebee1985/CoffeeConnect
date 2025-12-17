import Foundation

enum OrderStatus: String, Codable {
    case pending
    case confirmed
    case preparing
    case outForDelivery
    case delivered
}
