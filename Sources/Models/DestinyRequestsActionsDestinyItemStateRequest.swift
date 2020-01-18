//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyRequestsActionsDestinyItemStateRequest: APIModel {

    public var characterId: Int?

    public var itemId: Int?

    public var membershipType: Int?

    public var state: Bool?

    public init(characterId: Int? = nil, itemId: Int? = nil, membershipType: Int? = nil, state: Bool? = nil) {
        self.characterId = characterId
        self.itemId = itemId
        self.membershipType = membershipType
        self.state = state
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        characterId = try container.decodeIfPresent("characterId")
        itemId = try container.decodeIfPresent("itemId")
        membershipType = try container.decodeIfPresent("membershipType")
        state = try container.decodeIfPresent("state")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(characterId, forKey: "characterId")
        try container.encodeIfPresent(itemId, forKey: "itemId")
        try container.encodeIfPresent(membershipType, forKey: "membershipType")
        try container.encodeIfPresent(state, forKey: "state")
    }

    public static func == (lhs: DestinyRequestsActionsDestinyItemStateRequest, rhs: DestinyRequestsActionsDestinyItemStateRequest) -> Bool {
        guard lhs.characterId == rhs.characterId else { return false }
        guard lhs.itemId == rhs.itemId else { return false }
        guard lhs.membershipType == rhs.membershipType else { return false }
        guard lhs.state == rhs.state else { return false }
        return true
    }
}