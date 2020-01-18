//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Very basic info about a user as returned by the Account server. */
public struct UserUserMembership: APIModel {

    /** Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API. */
    public var displayName: String?

    /** Membership ID as they user is known in the Accounts service */
    public var membershipId: Int?

    /** Type of the membership. Not necessarily the native type. */
    public var membershipType: Int?

    public init(displayName: String? = nil, membershipId: Int? = nil, membershipType: Int? = nil) {
        self.displayName = displayName
        self.membershipId = membershipId
        self.membershipType = membershipType
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        displayName = try container.decodeIfPresent("displayName")
        membershipId = try container.decodeIfPresent("membershipId")
        membershipType = try container.decodeIfPresent("membershipType")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(displayName, forKey: "displayName")
        try container.encodeIfPresent(membershipId, forKey: "membershipId")
        try container.encodeIfPresent(membershipType, forKey: "membershipType")
    }

    public static func == (lhs: UserUserMembership, rhs: UserUserMembership) -> Bool {
        guard lhs.displayName == rhs.displayName else { return false }
        guard lhs.membershipId == rhs.membershipId else { return false }
        guard lhs.membershipType == rhs.membershipType else { return false }
        return true
    }
}
