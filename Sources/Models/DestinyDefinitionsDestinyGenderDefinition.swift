//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Gender is a social construct, and as such we have definitions for Genders. Right now there happens to only be two, but we'll see what the future holds. */
public struct DestinyDefinitionsDestinyGenderDefinition: APIModel {

    public var displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition?

    /** This is a quick reference enumeration for all of the currently defined Genders. We use the enumeration for quicker lookups in related data, like DestinyClassDefinition.genderedClassNames. */
    public var genderType: Int?

    /** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
    public var hash: Int?

    /** The index of the entity as it was found in the investment tables. */
    public var index: Int?

    /** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
    public var redacted: Bool?

    public init(displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition? = nil, genderType: Int? = nil, hash: Int? = nil, index: Int? = nil, redacted: Bool? = nil) {
        self.displayProperties = displayProperties
        self.genderType = genderType
        self.hash = hash
        self.index = index
        self.redacted = redacted
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        displayProperties = try container.decodeIfPresent("displayProperties")
        genderType = try container.decodeIfPresent("genderType")
        hash = try container.decodeIfPresent("hash")
        index = try container.decodeIfPresent("index")
        redacted = try container.decodeIfPresent("redacted")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(displayProperties, forKey: "displayProperties")
        try container.encodeIfPresent(genderType, forKey: "genderType")
        try container.encodeIfPresent(hash, forKey: "hash")
        try container.encodeIfPresent(index, forKey: "index")
        try container.encodeIfPresent(redacted, forKey: "redacted")
    }

    public static func == (lhs: DestinyDefinitionsDestinyGenderDefinition, rhs: DestinyDefinitionsDestinyGenderDefinition) -> Bool {
        guard lhs.displayProperties == rhs.displayProperties else { return false }
        guard lhs.genderType == rhs.genderType else { return false }
        guard lhs.hash == rhs.hash else { return false }
        guard lhs.index == rhs.index else { return false }
        guard lhs.redacted == rhs.redacted else { return false }
        return true
    }
}