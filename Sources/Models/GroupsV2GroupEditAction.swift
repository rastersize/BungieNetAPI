//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct GroupsV2GroupEditAction: APIModel {

    public enum ChatSecurity: Int, Codable, Equatable, CaseIterable {
        case _0 = 0
        case _1 = 1
    }

    public enum DefaultPublicity: Int, Codable, Equatable, CaseIterable {
        case _0 = 0
        case _1 = 1
        case _2 = 2
    }

    public enum Homepage: Int, Codable, Equatable, CaseIterable {
        case _0 = 0
        case _1 = 1
        case _2 = 2
    }

    public enum MembershipOption: Int, Codable, Equatable, CaseIterable {
        case _0 = 0
        case _1 = 1
        case _2 = 2
    }

    public var about: String?

    public var allowChat: Bool?

    public var avatarImageIndex: Int?

    public var callsign: String?

    public var chatSecurity: ChatSecurity?

    public var defaultPublicity: DefaultPublicity?

    public var enableInvitationMessagingForAdmins: Bool?

    public var homepage: Homepage?

    public var isPublic: Bool?

    public var isPublicTopicAdminOnly: Bool?

    public var locale: String?

    public var membershipOption: MembershipOption?

    public var motto: String?

    public var name: String?

    public var tags: String?

    public var theme: String?

    public init(about: String? = nil, allowChat: Bool? = nil, avatarImageIndex: Int? = nil, callsign: String? = nil, chatSecurity: ChatSecurity? = nil, defaultPublicity: DefaultPublicity? = nil, enableInvitationMessagingForAdmins: Bool? = nil, homepage: Homepage? = nil, isPublic: Bool? = nil, isPublicTopicAdminOnly: Bool? = nil, locale: String? = nil, membershipOption: MembershipOption? = nil, motto: String? = nil, name: String? = nil, tags: String? = nil, theme: String? = nil) {
        self.about = about
        self.allowChat = allowChat
        self.avatarImageIndex = avatarImageIndex
        self.callsign = callsign
        self.chatSecurity = chatSecurity
        self.defaultPublicity = defaultPublicity
        self.enableInvitationMessagingForAdmins = enableInvitationMessagingForAdmins
        self.homepage = homepage
        self.isPublic = isPublic
        self.isPublicTopicAdminOnly = isPublicTopicAdminOnly
        self.locale = locale
        self.membershipOption = membershipOption
        self.motto = motto
        self.name = name
        self.tags = tags
        self.theme = theme
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        about = try container.decodeIfPresent("about")
        allowChat = try container.decodeIfPresent("allowChat")
        avatarImageIndex = try container.decodeIfPresent("avatarImageIndex")
        callsign = try container.decodeIfPresent("callsign")
        chatSecurity = try container.decodeIfPresent("chatSecurity")
        defaultPublicity = try container.decodeIfPresent("defaultPublicity")
        enableInvitationMessagingForAdmins = try container.decodeIfPresent("enableInvitationMessagingForAdmins")
        homepage = try container.decodeIfPresent("homepage")
        isPublic = try container.decodeIfPresent("isPublic")
        isPublicTopicAdminOnly = try container.decodeIfPresent("isPublicTopicAdminOnly")
        locale = try container.decodeIfPresent("locale")
        membershipOption = try container.decodeIfPresent("membershipOption")
        motto = try container.decodeIfPresent("motto")
        name = try container.decodeIfPresent("name")
        tags = try container.decodeIfPresent("tags")
        theme = try container.decodeIfPresent("theme")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(about, forKey: "about")
        try container.encodeIfPresent(allowChat, forKey: "allowChat")
        try container.encodeIfPresent(avatarImageIndex, forKey: "avatarImageIndex")
        try container.encodeIfPresent(callsign, forKey: "callsign")
        try container.encodeIfPresent(chatSecurity, forKey: "chatSecurity")
        try container.encodeIfPresent(defaultPublicity, forKey: "defaultPublicity")
        try container.encodeIfPresent(enableInvitationMessagingForAdmins, forKey: "enableInvitationMessagingForAdmins")
        try container.encodeIfPresent(homepage, forKey: "homepage")
        try container.encodeIfPresent(isPublic, forKey: "isPublic")
        try container.encodeIfPresent(isPublicTopicAdminOnly, forKey: "isPublicTopicAdminOnly")
        try container.encodeIfPresent(locale, forKey: "locale")
        try container.encodeIfPresent(membershipOption, forKey: "membershipOption")
        try container.encodeIfPresent(motto, forKey: "motto")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(tags, forKey: "tags")
        try container.encodeIfPresent(theme, forKey: "theme")
    }

    public static func == (lhs: GroupsV2GroupEditAction, rhs: GroupsV2GroupEditAction) -> Bool {
        guard lhs.about == rhs.about else { return false }
        guard lhs.allowChat == rhs.allowChat else { return false }
        guard lhs.avatarImageIndex == rhs.avatarImageIndex else { return false }
        guard lhs.callsign == rhs.callsign else { return false }
        guard lhs.chatSecurity == rhs.chatSecurity else { return false }
        guard lhs.defaultPublicity == rhs.defaultPublicity else { return false }
        guard lhs.enableInvitationMessagingForAdmins == rhs.enableInvitationMessagingForAdmins else { return false }
        guard lhs.homepage == rhs.homepage else { return false }
        guard lhs.isPublic == rhs.isPublic else { return false }
        guard lhs.isPublicTopicAdminOnly == rhs.isPublicTopicAdminOnly else { return false }
        guard lhs.locale == rhs.locale else { return false }
        guard lhs.membershipOption == rhs.membershipOption else { return false }
        guard lhs.motto == rhs.motto else { return false }
        guard lhs.name == rhs.name else { return false }
        guard lhs.tags == rhs.tags else { return false }
        guard lhs.theme == rhs.theme else { return false }
        return true
    }
}
