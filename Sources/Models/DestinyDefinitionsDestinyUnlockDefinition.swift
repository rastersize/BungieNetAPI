//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Unlock Flags are small bits (literally, a bit, as in a boolean value) that the game server uses for an extremely wide range of state checks, progress storage, and other interesting tidbits of information. */
public struct DestinyDefinitionsDestinyUnlockDefinition: APIModel {

    /** Sometimes, but not frequently, these unlock flags also have human readable information: usually when they are being directly tested for some requirement, in which case the string is a localized description of why the requirement check failed. */
    public var displayProperties: [String: Any]?

    /** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
    public var hash: Int?

    /** The index of the entity as it was found in the investment tables. */
    public var index: Int?

    /** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
    public var redacted: Bool?

    public init(displayProperties: [String: Any]? = nil, hash: Int? = nil, index: Int? = nil, redacted: Bool? = nil) {
        self.displayProperties = displayProperties
        self.hash = hash
        self.index = index
        self.redacted = redacted
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        displayProperties = try container.decodeAnyIfPresent("displayProperties")
        hash = try container.decodeIfPresent("hash")
        index = try container.decodeIfPresent("index")
        redacted = try container.decodeIfPresent("redacted")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeAnyIfPresent(displayProperties, forKey: "displayProperties")
        try container.encodeIfPresent(hash, forKey: "hash")
        try container.encodeIfPresent(index, forKey: "index")
        try container.encodeIfPresent(redacted, forKey: "redacted")
    }

    public static func == (lhs: DestinyDefinitionsDestinyUnlockDefinition, rhs: DestinyDefinitionsDestinyUnlockDefinition) -> Bool {
        guard NSDictionary(dictionary: lhs.displayProperties ?? [:]).isEqual(to: rhs.displayProperties ?? [:]) else { return false }
        guard lhs.hash == rhs.hash else { return false }
        guard lhs.index == rhs.index else { return false }
        guard lhs.redacted == rhs.redacted else { return false }
        return true
    }
}
