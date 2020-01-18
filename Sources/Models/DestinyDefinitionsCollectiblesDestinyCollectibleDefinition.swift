//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Defines a */
public struct DestinyDefinitionsCollectiblesDestinyCollectibleDefinition: APIModel {

    public var acquisitionInfo: DestinyDefinitionsCollectiblesDestinyCollectibleAcquisitionBlock?

    public var displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition?

    /** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
    public var hash: Int?

    /** The index of the entity as it was found in the investment tables. */
    public var index: Int?

    public var itemHash: Int?

    public var presentationInfo: DestinyDefinitionsPresentationDestinyPresentationChildBlock?

    /** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
    public var redacted: Bool?

    /** Indicates whether this Collectible's state is determined on a per-character or on an account-wide basis. */
    public var scope: Int?

    /** This is a hash identifier we are building on the BNet side in an attempt to let people group collectibles by similar sources.
I can't promise that it's going to be 100% accurate, but if the designers were consistent in assigning the same source strings to items with the same sources, it *ought to* be. No promises though.
This hash also doesn't relate to an actual definition, just to note: we've got nothing useful other than the source string for this data. */
    public var sourceHash: Int?

    /** A human readable string for a hint about how to acquire the item. */
    public var sourceString: String?

    public var stateInfo: DestinyDefinitionsCollectiblesDestinyCollectibleStateBlock?

    public init(acquisitionInfo: DestinyDefinitionsCollectiblesDestinyCollectibleAcquisitionBlock? = nil, displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition? = nil, hash: Int? = nil, index: Int? = nil, itemHash: Int? = nil, presentationInfo: DestinyDefinitionsPresentationDestinyPresentationChildBlock? = nil, redacted: Bool? = nil, scope: Int? = nil, sourceHash: Int? = nil, sourceString: String? = nil, stateInfo: DestinyDefinitionsCollectiblesDestinyCollectibleStateBlock? = nil) {
        self.acquisitionInfo = acquisitionInfo
        self.displayProperties = displayProperties
        self.hash = hash
        self.index = index
        self.itemHash = itemHash
        self.presentationInfo = presentationInfo
        self.redacted = redacted
        self.scope = scope
        self.sourceHash = sourceHash
        self.sourceString = sourceString
        self.stateInfo = stateInfo
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        acquisitionInfo = try container.decodeIfPresent("acquisitionInfo")
        displayProperties = try container.decodeIfPresent("displayProperties")
        hash = try container.decodeIfPresent("hash")
        index = try container.decodeIfPresent("index")
        itemHash = try container.decodeIfPresent("itemHash")
        presentationInfo = try container.decodeIfPresent("presentationInfo")
        redacted = try container.decodeIfPresent("redacted")
        scope = try container.decodeIfPresent("scope")
        sourceHash = try container.decodeIfPresent("sourceHash")
        sourceString = try container.decodeIfPresent("sourceString")
        stateInfo = try container.decodeIfPresent("stateInfo")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(acquisitionInfo, forKey: "acquisitionInfo")
        try container.encodeIfPresent(displayProperties, forKey: "displayProperties")
        try container.encodeIfPresent(hash, forKey: "hash")
        try container.encodeIfPresent(index, forKey: "index")
        try container.encodeIfPresent(itemHash, forKey: "itemHash")
        try container.encodeIfPresent(presentationInfo, forKey: "presentationInfo")
        try container.encodeIfPresent(redacted, forKey: "redacted")
        try container.encodeIfPresent(scope, forKey: "scope")
        try container.encodeIfPresent(sourceHash, forKey: "sourceHash")
        try container.encodeIfPresent(sourceString, forKey: "sourceString")
        try container.encodeIfPresent(stateInfo, forKey: "stateInfo")
    }

    public static func == (lhs: DestinyDefinitionsCollectiblesDestinyCollectibleDefinition, rhs: DestinyDefinitionsCollectiblesDestinyCollectibleDefinition) -> Bool {
        guard lhs.acquisitionInfo == rhs.acquisitionInfo else { return false }
        guard lhs.displayProperties == rhs.displayProperties else { return false }
        guard lhs.hash == rhs.hash else { return false }
        guard lhs.index == rhs.index else { return false }
        guard lhs.itemHash == rhs.itemHash else { return false }
        guard lhs.presentationInfo == rhs.presentationInfo else { return false }
        guard lhs.redacted == rhs.redacted else { return false }
        guard lhs.scope == rhs.scope else { return false }
        guard lhs.sourceHash == rhs.sourceHash else { return false }
        guard lhs.sourceString == rhs.sourceString else { return false }
        guard lhs.stateInfo == rhs.stateInfo else { return false }
        return true
    }
}
