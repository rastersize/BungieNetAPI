//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyRequestsActionsDestinyActionRequest: APIModel {

    public var membershipType: Int?

    public init(membershipType: Int? = nil) {
        self.membershipType = membershipType
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        membershipType = try container.decodeIfPresent("membershipType")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(membershipType, forKey: "membershipType")
    }

    public static func == (lhs: DestinyRequestsActionsDestinyActionRequest, rhs: DestinyRequestsActionsDestinyActionRequest) -> Bool {
        guard lhs.membershipType == rhs.membershipType else { return false }
        return true
    }
}
