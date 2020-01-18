//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct GroupsV2GroupFeatures: APIModel {

    public var capabilities: Int?

    /** Minimum Member Level allowed to host guided games
Always Allowed: Founder, Acting Founder, Admin
Allowed Overrides: None, Member, Beginner
Default is Member for clans, None for groups, although this means nothing for groups. */
    public var hostGuidedGamePermissionOverride: Int?

    /** Minimum Member Level allowed to invite new members to group
Always Allowed: Founder, Acting Founder
True means admins have this power, false means they don't
Default is false for clans, true for groups. */
    public var invitePermissionOverride: Bool?

    /** Level to join a member at when accepting an invite, application, or joining an open clan
Default is Beginner. */
    public var joinLevel: Int?

    public var maximumMembers: Int?

    /** Maximum number of groups of this type a typical membership may join. For example, a user may join about 50 General groups with their Bungie.net account. They may join one clan per Destiny membership. */
    public var maximumMembershipsOfGroupType: Int?

    public var membershipTypes: [Int]?

    /** Minimum Member Level allowed to update banner
Always Allowed: Founder, Acting Founder
True means admins have this power, false means they don't
Default is false for clans, true for groups. */
    public var updateBannerPermissionOverride: Bool?

    /** Minimum Member Level allowed to update group culture
Always Allowed: Founder, Acting Founder
True means admins have this power, false means they don't
Default is false for clans, true for groups. */
    public var updateCulturePermissionOverride: Bool?

    public init(capabilities: Int? = nil, hostGuidedGamePermissionOverride: Int? = nil, invitePermissionOverride: Bool? = nil, joinLevel: Int? = nil, maximumMembers: Int? = nil, maximumMembershipsOfGroupType: Int? = nil, membershipTypes: [Int]? = nil, updateBannerPermissionOverride: Bool? = nil, updateCulturePermissionOverride: Bool? = nil) {
        self.capabilities = capabilities
        self.hostGuidedGamePermissionOverride = hostGuidedGamePermissionOverride
        self.invitePermissionOverride = invitePermissionOverride
        self.joinLevel = joinLevel
        self.maximumMembers = maximumMembers
        self.maximumMembershipsOfGroupType = maximumMembershipsOfGroupType
        self.membershipTypes = membershipTypes
        self.updateBannerPermissionOverride = updateBannerPermissionOverride
        self.updateCulturePermissionOverride = updateCulturePermissionOverride
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        capabilities = try container.decodeIfPresent("capabilities")
        hostGuidedGamePermissionOverride = try container.decodeIfPresent("hostGuidedGamePermissionOverride")
        invitePermissionOverride = try container.decodeIfPresent("invitePermissionOverride")
        joinLevel = try container.decodeIfPresent("joinLevel")
        maximumMembers = try container.decodeIfPresent("maximumMembers")
        maximumMembershipsOfGroupType = try container.decodeIfPresent("maximumMembershipsOfGroupType")
        membershipTypes = try container.decodeArrayIfPresent("membershipTypes")
        updateBannerPermissionOverride = try container.decodeIfPresent("updateBannerPermissionOverride")
        updateCulturePermissionOverride = try container.decodeIfPresent("updateCulturePermissionOverride")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(capabilities, forKey: "capabilities")
        try container.encodeIfPresent(hostGuidedGamePermissionOverride, forKey: "hostGuidedGamePermissionOverride")
        try container.encodeIfPresent(invitePermissionOverride, forKey: "invitePermissionOverride")
        try container.encodeIfPresent(joinLevel, forKey: "joinLevel")
        try container.encodeIfPresent(maximumMembers, forKey: "maximumMembers")
        try container.encodeIfPresent(maximumMembershipsOfGroupType, forKey: "maximumMembershipsOfGroupType")
        try container.encodeIfPresent(membershipTypes, forKey: "membershipTypes")
        try container.encodeIfPresent(updateBannerPermissionOverride, forKey: "updateBannerPermissionOverride")
        try container.encodeIfPresent(updateCulturePermissionOverride, forKey: "updateCulturePermissionOverride")
    }

    public static func == (lhs: GroupsV2GroupFeatures, rhs: GroupsV2GroupFeatures) -> Bool {
        guard lhs.capabilities == rhs.capabilities else { return false }
        guard lhs.hostGuidedGamePermissionOverride == rhs.hostGuidedGamePermissionOverride else { return false }
        guard lhs.invitePermissionOverride == rhs.invitePermissionOverride else { return false }
        guard lhs.joinLevel == rhs.joinLevel else { return false }
        guard lhs.maximumMembers == rhs.maximumMembers else { return false }
        guard lhs.maximumMembershipsOfGroupType == rhs.maximumMembershipsOfGroupType else { return false }
        guard lhs.membershipTypes == rhs.membershipTypes else { return false }
        guard lhs.updateBannerPermissionOverride == rhs.updateBannerPermissionOverride else { return false }
        guard lhs.updateCulturePermissionOverride == rhs.updateCulturePermissionOverride else { return false }
        return true
    }
}