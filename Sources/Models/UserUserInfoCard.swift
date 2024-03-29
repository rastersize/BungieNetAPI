//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
public struct UserUserInfoCard: APIModel {

    /** The list of Membership Types indicating the platforms on which this Membership can be used.
 Not in Cross Save = its original membership type. Cross Save Primary = Any membership types it is overridding, and its original membership type Cross Save Overridden = Empty list */
    public var applicableMembershipTypes: [Int]?

    /** If there is a cross save override in effect, this value will tell you the type that is overridding this one. */
    public var crossSaveOverride: Int?

    /** Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API. */
    public var displayName: String?

    /** URL the Icon if available. */
    public var iconPath: String?

    /** If True, this is a public user membership. */
    public var isPublic: Bool?

    /** Membership ID as they user is known in the Accounts service */
    public var membershipId: Int?

    /** Type of the membership. Not necessarily the native type. */
    public var membershipType: Int?

    /** A platform specific additional display name - ex: psn Real Name, bnet Unique Name, etc. */
    public var supplementalDisplayName: String?

    public init(applicableMembershipTypes: [Int]? = nil, crossSaveOverride: Int? = nil, displayName: String? = nil, iconPath: String? = nil, isPublic: Bool? = nil, membershipId: Int? = nil, membershipType: Int? = nil, supplementalDisplayName: String? = nil) {
        self.applicableMembershipTypes = applicableMembershipTypes
        self.crossSaveOverride = crossSaveOverride
        self.displayName = displayName
        self.iconPath = iconPath
        self.isPublic = isPublic
        self.membershipId = membershipId
        self.membershipType = membershipType
        self.supplementalDisplayName = supplementalDisplayName
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        applicableMembershipTypes = try container.decodeArrayIfPresent("applicableMembershipTypes")
        crossSaveOverride = try container.decodeIfPresent("crossSaveOverride")
        displayName = try container.decodeIfPresent("displayName")
        iconPath = try container.decodeIfPresent("iconPath")
        isPublic = try container.decodeIfPresent("isPublic")
        membershipId = try container.decodeIfPresent("membershipId")
        membershipType = try container.decodeIfPresent("membershipType")
        supplementalDisplayName = try container.decodeIfPresent("supplementalDisplayName")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(applicableMembershipTypes, forKey: "applicableMembershipTypes")
        try container.encodeIfPresent(crossSaveOverride, forKey: "crossSaveOverride")
        try container.encodeIfPresent(displayName, forKey: "displayName")
        try container.encodeIfPresent(iconPath, forKey: "iconPath")
        try container.encodeIfPresent(isPublic, forKey: "isPublic")
        try container.encodeIfPresent(membershipId, forKey: "membershipId")
        try container.encodeIfPresent(membershipType, forKey: "membershipType")
        try container.encodeIfPresent(supplementalDisplayName, forKey: "supplementalDisplayName")
    }

    public static func == (lhs: UserUserInfoCard, rhs: UserUserInfoCard) -> Bool {
        guard lhs.applicableMembershipTypes == rhs.applicableMembershipTypes else { return false }
        guard lhs.crossSaveOverride == rhs.crossSaveOverride else { return false }
        guard lhs.displayName == rhs.displayName else { return false }
        guard lhs.iconPath == rhs.iconPath else { return false }
        guard lhs.isPublic == rhs.isPublic else { return false }
        guard lhs.membershipId == rhs.membershipId else { return false }
        guard lhs.membershipType == rhs.membershipType else { return false }
        guard lhs.supplementalDisplayName == rhs.supplementalDisplayName else { return false }
        return true
    }
}
