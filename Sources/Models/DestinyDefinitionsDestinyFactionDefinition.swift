//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** These definitions represent Factions in the game. Factions have ended up unilaterally being related to Vendors that represent them, but that need not necessarily be the case.
A Faction is really just an entity that has a related progression for which a character can gain experience. In Destiny 1, Dead Orbit was an example of a Faction: there happens to be a Vendor that represents Dead Orbit (and indeed, DestinyVendorDefinition.factionHash defines to this relationship), but Dead Orbit could theoretically exist without the Vendor that provides rewards. */
public struct DestinyDefinitionsDestinyFactionDefinition: APIModel {

    public var displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition?

    /** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
    public var hash: Int?

    /** The index of the entity as it was found in the investment tables. */
    public var index: Int?

    /** The hash identifier for the DestinyProgressionDefinition that indicates the character's relationship with this faction in terms of experience and levels. */
    public var progressionHash: Int?

    /** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
    public var redacted: Bool?

    /** The faction reward item hash, usually an engram. */
    public var rewardItemHash: Int?

    /** The faction reward vendor hash, used for faction engram previews. */
    public var rewardVendorHash: Int?

    /** The faction token item hashes, and their respective progression values. */
    public var tokenValues: [String: Int]?

    /** List of vendors that are associated with this faction. The last vendor that passes the unlock flag checks is the one that should be shown. */
    public var vendors: [DestinyDefinitionsDestinyFactionVendorDefinition]?

    public init(displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition? = nil, hash: Int? = nil, index: Int? = nil, progressionHash: Int? = nil, redacted: Bool? = nil, rewardItemHash: Int? = nil, rewardVendorHash: Int? = nil, tokenValues: [String: Int]? = nil, vendors: [DestinyDefinitionsDestinyFactionVendorDefinition]? = nil) {
        self.displayProperties = displayProperties
        self.hash = hash
        self.index = index
        self.progressionHash = progressionHash
        self.redacted = redacted
        self.rewardItemHash = rewardItemHash
        self.rewardVendorHash = rewardVendorHash
        self.tokenValues = tokenValues
        self.vendors = vendors
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        displayProperties = try container.decodeIfPresent("displayProperties")
        hash = try container.decodeIfPresent("hash")
        index = try container.decodeIfPresent("index")
        progressionHash = try container.decodeIfPresent("progressionHash")
        redacted = try container.decodeIfPresent("redacted")
        rewardItemHash = try container.decodeIfPresent("rewardItemHash")
        rewardVendorHash = try container.decodeIfPresent("rewardVendorHash")
        tokenValues = try container.decodeIfPresent("tokenValues")
        vendors = try container.decodeArrayIfPresent("vendors")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(displayProperties, forKey: "displayProperties")
        try container.encodeIfPresent(hash, forKey: "hash")
        try container.encodeIfPresent(index, forKey: "index")
        try container.encodeIfPresent(progressionHash, forKey: "progressionHash")
        try container.encodeIfPresent(redacted, forKey: "redacted")
        try container.encodeIfPresent(rewardItemHash, forKey: "rewardItemHash")
        try container.encodeIfPresent(rewardVendorHash, forKey: "rewardVendorHash")
        try container.encodeIfPresent(tokenValues, forKey: "tokenValues")
        try container.encodeIfPresent(vendors, forKey: "vendors")
    }

    public static func == (lhs: DestinyDefinitionsDestinyFactionDefinition, rhs: DestinyDefinitionsDestinyFactionDefinition) -> Bool {
        guard lhs.displayProperties == rhs.displayProperties else { return false }
        guard lhs.hash == rhs.hash else { return false }
        guard lhs.index == rhs.index else { return false }
        guard lhs.progressionHash == rhs.progressionHash else { return false }
        guard lhs.redacted == rhs.redacted else { return false }
        guard lhs.rewardItemHash == rhs.rewardItemHash else { return false }
        guard lhs.rewardVendorHash == rhs.rewardVendorHash else { return false }
        guard lhs.tokenValues == rhs.tokenValues else { return false }
        guard lhs.vendors == rhs.vendors else { return false }
        return true
    }
}
