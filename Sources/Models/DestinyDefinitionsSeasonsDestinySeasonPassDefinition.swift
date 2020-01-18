//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyDefinitionsSeasonsDestinySeasonPassDefinition: APIModel {

    public var displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition?

    /** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
    public var hash: Int?

    /** The index of the entity as it was found in the investment tables. */
    public var index: Int?

    /** I know what you're thinking, but I promise we're not going to duplicate and drown you. Instead, we're giving you sweet, sweet power bonuses.
 Prestige progression is further progression that you can make on the Season pass after you gain max ranks, that will ultimately increase your power/light level over the theoretical limit. */
    public var prestigeProgressionHash: Int?

    /** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
    public var redacted: Bool?

    /** This is the progression definition related to the progression for the initial levels 1-100 that provide item rewards for the Season pass. Further experience after you reach the limit is provided in the "Prestige" progression referred to by prestigeProgressionHash. */
    public var rewardProgressionHash: Int?

    public init(displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition? = nil, hash: Int? = nil, index: Int? = nil, prestigeProgressionHash: Int? = nil, redacted: Bool? = nil, rewardProgressionHash: Int? = nil) {
        self.displayProperties = displayProperties
        self.hash = hash
        self.index = index
        self.prestigeProgressionHash = prestigeProgressionHash
        self.redacted = redacted
        self.rewardProgressionHash = rewardProgressionHash
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        displayProperties = try container.decodeIfPresent("displayProperties")
        hash = try container.decodeIfPresent("hash")
        index = try container.decodeIfPresent("index")
        prestigeProgressionHash = try container.decodeIfPresent("prestigeProgressionHash")
        redacted = try container.decodeIfPresent("redacted")
        rewardProgressionHash = try container.decodeIfPresent("rewardProgressionHash")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(displayProperties, forKey: "displayProperties")
        try container.encodeIfPresent(hash, forKey: "hash")
        try container.encodeIfPresent(index, forKey: "index")
        try container.encodeIfPresent(prestigeProgressionHash, forKey: "prestigeProgressionHash")
        try container.encodeIfPresent(redacted, forKey: "redacted")
        try container.encodeIfPresent(rewardProgressionHash, forKey: "rewardProgressionHash")
    }

    public static func == (lhs: DestinyDefinitionsSeasonsDestinySeasonPassDefinition, rhs: DestinyDefinitionsSeasonsDestinySeasonPassDefinition) -> Bool {
        guard lhs.displayProperties == rhs.displayProperties else { return false }
        guard lhs.hash == rhs.hash else { return false }
        guard lhs.index == rhs.index else { return false }
        guard lhs.prestigeProgressionHash == rhs.prestigeProgressionHash else { return false }
        guard lhs.redacted == rhs.redacted else { return false }
        guard lhs.rewardProgressionHash == rhs.rewardProgressionHash else { return false }
        return true
    }
}
