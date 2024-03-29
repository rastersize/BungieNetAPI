//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Represents known info about a Destiny Artifact.
We cannot guarantee that artifact definitions will be immutable between seasons - in fact, we've been told that they will be replaced between seasons. But this definition is built both to minimize the amount of lookups for related data that have to occur, and is built in hope that, if this plan changes, we will be able to accommodate it more easily. */
public struct DestinyDefinitionsArtifactsDestinyArtifactDefinition: APIModel {

    /** Any basic display info we know about the Artifact. Currently sourced from a related inventory item, but the source of this data is subject to change. */
    public var displayProperties: [String: Any]?

    /** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
    public var hash: Int?

    /** The index of the entity as it was found in the investment tables. */
    public var index: Int?

    /** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
    public var redacted: Bool?

    /** Any Tier/Rank data related to this artifact, listed in display order.  Currently sourced from a Vendor, but this source is subject to change. */
    public var tiers: [DestinyDefinitionsArtifactsDestinyArtifactTierDefinition]?

    /** Any Geometry/3D info we know about the Artifact. Currently sourced from a related inventory item's gearset information, but the source of this data is subject to change. */
    public var translationBlock: [String: Any]?

    public init(displayProperties: [String: Any]? = nil, hash: Int? = nil, index: Int? = nil, redacted: Bool? = nil, tiers: [DestinyDefinitionsArtifactsDestinyArtifactTierDefinition]? = nil, translationBlock: [String: Any]? = nil) {
        self.displayProperties = displayProperties
        self.hash = hash
        self.index = index
        self.redacted = redacted
        self.tiers = tiers
        self.translationBlock = translationBlock
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        displayProperties = try container.decodeAnyIfPresent("displayProperties")
        hash = try container.decodeIfPresent("hash")
        index = try container.decodeIfPresent("index")
        redacted = try container.decodeIfPresent("redacted")
        tiers = try container.decodeArrayIfPresent("tiers")
        translationBlock = try container.decodeAnyIfPresent("translationBlock")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeAnyIfPresent(displayProperties, forKey: "displayProperties")
        try container.encodeIfPresent(hash, forKey: "hash")
        try container.encodeIfPresent(index, forKey: "index")
        try container.encodeIfPresent(redacted, forKey: "redacted")
        try container.encodeIfPresent(tiers, forKey: "tiers")
        try container.encodeAnyIfPresent(translationBlock, forKey: "translationBlock")
    }

    public static func == (lhs: DestinyDefinitionsArtifactsDestinyArtifactDefinition, rhs: DestinyDefinitionsArtifactsDestinyArtifactDefinition) -> Bool {
        guard NSDictionary(dictionary: lhs.displayProperties ?? [:]).isEqual(to: rhs.displayProperties ?? [:]) else { return false }
        guard lhs.hash == rhs.hash else { return false }
        guard lhs.index == rhs.index else { return false }
        guard lhs.redacted == rhs.redacted else { return false }
        guard lhs.tiers == rhs.tiers else { return false }
        guard NSDictionary(dictionary: lhs.translationBlock ?? [:]).isEqual(to: rhs.translationBlock ?? [:]) else { return false }
        return true
    }
}
