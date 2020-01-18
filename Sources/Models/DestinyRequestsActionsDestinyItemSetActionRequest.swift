//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyRequestsActionsDestinyItemSetActionRequest: APIModel {

    public var characterId: Int?

    public var itemIds: [Int]?

    public var membershipType: Int?

    public init(characterId: Int? = nil, itemIds: [Int]? = nil, membershipType: Int? = nil) {
        self.characterId = characterId
        self.itemIds = itemIds
        self.membershipType = membershipType
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        characterId = try container.decodeIfPresent("characterId")
        itemIds = try container.decodeArrayIfPresent("itemIds")
        membershipType = try container.decodeIfPresent("membershipType")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(characterId, forKey: "characterId")
        try container.encodeIfPresent(itemIds, forKey: "itemIds")
        try container.encodeIfPresent(membershipType, forKey: "membershipType")
    }

    public static func == (lhs: DestinyRequestsActionsDestinyItemSetActionRequest, rhs: DestinyRequestsActionsDestinyItemSetActionRequest) -> Bool {
        guard lhs.characterId == rhs.characterId else { return false }
        guard lhs.itemIds == rhs.itemIds else { return false }
        guard lhs.membershipType == rhs.membershipType else { return false }
        return true
    }
}