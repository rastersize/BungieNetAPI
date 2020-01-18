//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Modifiers - in Destiny 1, these were referred to as "Skulls" - are changes that can be applied to an Activity. */
public struct DestinyDefinitionsActivityModifiersDestinyActivityModifierDefinition: APIModel {

    public var displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition?

    /** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
    public var hash: Int?

    /** The index of the entity as it was found in the investment tables. */
    public var index: Int?

    /** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
    public var redacted: Bool?

    public init(displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition? = nil, hash: Int? = nil, index: Int? = nil, redacted: Bool? = nil) {
        self.displayProperties = displayProperties
        self.hash = hash
        self.index = index
        self.redacted = redacted
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        displayProperties = try container.decodeIfPresent("displayProperties")
        hash = try container.decodeIfPresent("hash")
        index = try container.decodeIfPresent("index")
        redacted = try container.decodeIfPresent("redacted")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(displayProperties, forKey: "displayProperties")
        try container.encodeIfPresent(hash, forKey: "hash")
        try container.encodeIfPresent(index, forKey: "index")
        try container.encodeIfPresent(redacted, forKey: "redacted")
    }

    public static func == (lhs: DestinyDefinitionsActivityModifiersDestinyActivityModifierDefinition, rhs: DestinyDefinitionsActivityModifiersDestinyActivityModifierDefinition) -> Bool {
        guard lhs.displayProperties == rhs.displayProperties else { return false }
        guard lhs.hash == rhs.hash else { return false }
        guard lhs.index == rhs.index else { return false }
        guard lhs.redacted == rhs.redacted else { return false }
        return true
    }
}
