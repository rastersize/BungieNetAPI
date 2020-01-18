//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Data about an item's "sources": ways that the item can be obtained. */
public struct DestinyDefinitionsDestinyItemSourceBlockDefinition: APIModel {

    /** If we found that this item is exclusive to a specific platform, this will be set to the BungieMembershipType enumeration that matches that platform. */
    public var exclusive: Int?

    /** The list of hash identifiers for Reward Sources that hint where the item can be found (DestinyRewardSourceDefinition). */
    public var sourceHashes: [Int]?

    /** A collection of details about the stats that were computed for the ways we found that the item could be spawned. */
    public var sources: [DestinyDefinitionsSourcesDestinyItemSourceDefinition]?

    /** A denormalized reference back to vendors that potentially sell this item. */
    public var vendorSources: [DestinyDefinitionsDestinyItemVendorSourceReference]?

    public init(exclusive: Int? = nil, sourceHashes: [Int]? = nil, sources: [DestinyDefinitionsSourcesDestinyItemSourceDefinition]? = nil, vendorSources: [DestinyDefinitionsDestinyItemVendorSourceReference]? = nil) {
        self.exclusive = exclusive
        self.sourceHashes = sourceHashes
        self.sources = sources
        self.vendorSources = vendorSources
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        exclusive = try container.decodeIfPresent("exclusive")
        sourceHashes = try container.decodeArrayIfPresent("sourceHashes")
        sources = try container.decodeArrayIfPresent("sources")
        vendorSources = try container.decodeArrayIfPresent("vendorSources")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(exclusive, forKey: "exclusive")
        try container.encodeIfPresent(sourceHashes, forKey: "sourceHashes")
        try container.encodeIfPresent(sources, forKey: "sources")
        try container.encodeIfPresent(vendorSources, forKey: "vendorSources")
    }

    public static func == (lhs: DestinyDefinitionsDestinyItemSourceBlockDefinition, rhs: DestinyDefinitionsDestinyItemSourceBlockDefinition) -> Bool {
        guard lhs.exclusive == rhs.exclusive else { return false }
        guard lhs.sourceHashes == rhs.sourceHashes else { return false }
        guard lhs.sources == rhs.sources else { return false }
        guard lhs.vendorSources == rhs.vendorSources else { return false }
        return true
    }
}
