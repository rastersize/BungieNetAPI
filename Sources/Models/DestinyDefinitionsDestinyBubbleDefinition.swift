//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Basic identifying data about the bubble. Combine with DestinyDestinationBubbleSettingDefinition - see DestinyDestinationDefinition.bubbleSettings for more information. */
public struct DestinyDefinitionsDestinyBubbleDefinition: APIModel {

    /** The display properties of this bubble, so you don't have to look them up in a separate list anymore. */
    public var displayProperties: [String: Any]?

    /** The identifier for the bubble: only guaranteed to be unique within the Destination. */
    public var hash: Int?

    public init(displayProperties: [String: Any]? = nil, hash: Int? = nil) {
        self.displayProperties = displayProperties
        self.hash = hash
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        displayProperties = try container.decodeAnyIfPresent("displayProperties")
        hash = try container.decodeIfPresent("hash")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeAnyIfPresent(displayProperties, forKey: "displayProperties")
        try container.encodeIfPresent(hash, forKey: "hash")
    }

    public static func == (lhs: DestinyDefinitionsDestinyBubbleDefinition, rhs: DestinyDefinitionsDestinyBubbleDefinition) -> Bool {
        guard NSDictionary(dictionary: lhs.displayProperties ?? [:]).isEqual(to: rhs.displayProperties ?? [:]) else { return false }
        guard lhs.hash == rhs.hash else { return false }
        return true
    }
}
