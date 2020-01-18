//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct UserUserMembershipData: APIModel {

    public var bungieNetUser: UserGeneralUser?

    /** this allows you to see destiny memberships that are visible and linked to this account (regardless of whether or not they have characters on the world server) */
    public var destinyMemberships: [GroupsV2GroupUserInfoCard]?

    public init(bungieNetUser: UserGeneralUser? = nil, destinyMemberships: [GroupsV2GroupUserInfoCard]? = nil) {
        self.bungieNetUser = bungieNetUser
        self.destinyMemberships = destinyMemberships
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        bungieNetUser = try container.decodeIfPresent("bungieNetUser")
        destinyMemberships = try container.decodeArrayIfPresent("destinyMemberships")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(bungieNetUser, forKey: "bungieNetUser")
        try container.encodeIfPresent(destinyMemberships, forKey: "destinyMemberships")
    }

    public static func == (lhs: UserUserMembershipData, rhs: UserUserMembershipData) -> Bool {
        guard lhs.bungieNetUser == rhs.bungieNetUser else { return false }
        guard lhs.destinyMemberships == rhs.destinyMemberships else { return false }
        return true
    }
}
