//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct GroupsV2GroupOptionalConversationAddRequest: APIModel {

    public var chatName: String?

    public var chatSecurity: Int?

    public init(chatName: String? = nil, chatSecurity: Int? = nil) {
        self.chatName = chatName
        self.chatSecurity = chatSecurity
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        chatName = try container.decodeIfPresent("chatName")
        chatSecurity = try container.decodeIfPresent("chatSecurity")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(chatName, forKey: "chatName")
        try container.encodeIfPresent(chatSecurity, forKey: "chatSecurity")
    }

    public static func == (lhs: GroupsV2GroupOptionalConversationAddRequest, rhs: GroupsV2GroupOptionalConversationAddRequest) -> Bool {
        guard lhs.chatName == rhs.chatName else { return false }
        guard lhs.chatSecurity == rhs.chatSecurity else { return false }
        return true
    }
}