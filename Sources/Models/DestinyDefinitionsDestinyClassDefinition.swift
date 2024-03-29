//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Defines a Character Class in Destiny 2. These are types of characters you can play, like Titan, Warlock, and Hunter. */
public struct DestinyDefinitionsDestinyClassDefinition: APIModel {

    /** In Destiny 1, we added a convenience Enumeration for referring to classes. We've kept it, though mostly for posterity. This is the enum value for this definition's class. */
    public var classType: Int?

    public var displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition?

    /** A localized string referring to the singular form of the Class's name when referred to in gendered form. Keyed by the DestinyGender. */
    public var genderedClassNames: [String: String]?

    public var genderedClassNamesByGenderHash: [String: String]?

    /** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
    public var hash: Int?

    /** The index of the entity as it was found in the investment tables. */
    public var index: Int?

    /** Mentors don't really mean anything anymore. Don't expect this to be populated. */
    public var mentorVendorHash: Int?

    /** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
    public var redacted: Bool?

    public init(classType: Int? = nil, displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition? = nil, genderedClassNames: [String: String]? = nil, genderedClassNamesByGenderHash: [String: String]? = nil, hash: Int? = nil, index: Int? = nil, mentorVendorHash: Int? = nil, redacted: Bool? = nil) {
        self.classType = classType
        self.displayProperties = displayProperties
        self.genderedClassNames = genderedClassNames
        self.genderedClassNamesByGenderHash = genderedClassNamesByGenderHash
        self.hash = hash
        self.index = index
        self.mentorVendorHash = mentorVendorHash
        self.redacted = redacted
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        classType = try container.decodeIfPresent("classType")
        displayProperties = try container.decodeIfPresent("displayProperties")
        genderedClassNames = try container.decodeIfPresent("genderedClassNames")
        genderedClassNamesByGenderHash = try container.decodeIfPresent("genderedClassNamesByGenderHash")
        hash = try container.decodeIfPresent("hash")
        index = try container.decodeIfPresent("index")
        mentorVendorHash = try container.decodeIfPresent("mentorVendorHash")
        redacted = try container.decodeIfPresent("redacted")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(classType, forKey: "classType")
        try container.encodeIfPresent(displayProperties, forKey: "displayProperties")
        try container.encodeIfPresent(genderedClassNames, forKey: "genderedClassNames")
        try container.encodeIfPresent(genderedClassNamesByGenderHash, forKey: "genderedClassNamesByGenderHash")
        try container.encodeIfPresent(hash, forKey: "hash")
        try container.encodeIfPresent(index, forKey: "index")
        try container.encodeIfPresent(mentorVendorHash, forKey: "mentorVendorHash")
        try container.encodeIfPresent(redacted, forKey: "redacted")
    }

    public static func == (lhs: DestinyDefinitionsDestinyClassDefinition, rhs: DestinyDefinitionsDestinyClassDefinition) -> Bool {
        guard lhs.classType == rhs.classType else { return false }
        guard lhs.displayProperties == rhs.displayProperties else { return false }
        guard lhs.genderedClassNames == rhs.genderedClassNames else { return false }
        guard lhs.genderedClassNamesByGenderHash == rhs.genderedClassNamesByGenderHash else { return false }
        guard lhs.hash == rhs.hash else { return false }
        guard lhs.index == rhs.index else { return false }
        guard lhs.mentorVendorHash == rhs.mentorVendorHash else { return false }
        guard lhs.redacted == rhs.redacted else { return false }
        return true
    }
}
