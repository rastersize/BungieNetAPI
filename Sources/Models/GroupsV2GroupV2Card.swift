//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** A small infocard of group information, usually used for when a list of groups are returned */
public struct GroupsV2GroupV2Card: APIModel {

    public var about: String?

    public var avatarPath: String?

    public var capabilities: Int?

    public var clanInfo: GroupsV2GroupV2ClanInfo?

    public var creationDate: DateTime?

    public var groupId: Int?

    public var groupType: Int?

    public var locale: String?

    public var memberCount: Int?

    public var membershipOption: Int?

    public var motto: String?

    public var name: String?

    public var theme: String?

    public init(about: String? = nil, avatarPath: String? = nil, capabilities: Int? = nil, clanInfo: GroupsV2GroupV2ClanInfo? = nil, creationDate: DateTime? = nil, groupId: Int? = nil, groupType: Int? = nil, locale: String? = nil, memberCount: Int? = nil, membershipOption: Int? = nil, motto: String? = nil, name: String? = nil, theme: String? = nil) {
        self.about = about
        self.avatarPath = avatarPath
        self.capabilities = capabilities
        self.clanInfo = clanInfo
        self.creationDate = creationDate
        self.groupId = groupId
        self.groupType = groupType
        self.locale = locale
        self.memberCount = memberCount
        self.membershipOption = membershipOption
        self.motto = motto
        self.name = name
        self.theme = theme
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        about = try container.decodeIfPresent("about")
        avatarPath = try container.decodeIfPresent("avatarPath")
        capabilities = try container.decodeIfPresent("capabilities")
        clanInfo = try container.decodeIfPresent("clanInfo")
        creationDate = try container.decodeIfPresent("creationDate")
        groupId = try container.decodeIfPresent("groupId")
        groupType = try container.decodeIfPresent("groupType")
        locale = try container.decodeIfPresent("locale")
        memberCount = try container.decodeIfPresent("memberCount")
        membershipOption = try container.decodeIfPresent("membershipOption")
        motto = try container.decodeIfPresent("motto")
        name = try container.decodeIfPresent("name")
        theme = try container.decodeIfPresent("theme")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(about, forKey: "about")
        try container.encodeIfPresent(avatarPath, forKey: "avatarPath")
        try container.encodeIfPresent(capabilities, forKey: "capabilities")
        try container.encodeIfPresent(clanInfo, forKey: "clanInfo")
        try container.encodeIfPresent(creationDate, forKey: "creationDate")
        try container.encodeIfPresent(groupId, forKey: "groupId")
        try container.encodeIfPresent(groupType, forKey: "groupType")
        try container.encodeIfPresent(locale, forKey: "locale")
        try container.encodeIfPresent(memberCount, forKey: "memberCount")
        try container.encodeIfPresent(membershipOption, forKey: "membershipOption")
        try container.encodeIfPresent(motto, forKey: "motto")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(theme, forKey: "theme")
    }

    public static func == (lhs: GroupsV2GroupV2Card, rhs: GroupsV2GroupV2Card) -> Bool {
        guard lhs.about == rhs.about else { return false }
        guard lhs.avatarPath == rhs.avatarPath else { return false }
        guard lhs.capabilities == rhs.capabilities else { return false }
        guard lhs.clanInfo == rhs.clanInfo else { return false }
        guard lhs.creationDate == rhs.creationDate else { return false }
        guard lhs.groupId == rhs.groupId else { return false }
        guard lhs.groupType == rhs.groupType else { return false }
        guard lhs.locale == rhs.locale else { return false }
        guard lhs.memberCount == rhs.memberCount else { return false }
        guard lhs.membershipOption == rhs.membershipOption else { return false }
        guard lhs.motto == rhs.motto else { return false }
        guard lhs.name == rhs.name else { return false }
        guard lhs.theme == rhs.theme else { return false }
        return true
    }
}
