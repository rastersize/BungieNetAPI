//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The definition for information related to a key/value pair that is relevant for a particular Milestone or component within the Milestone. 
This lets us more flexibly pass up information that's useful to someone, even if it's not necessarily us. */
public struct DestinyDefinitionsMilestonesDestinyMilestoneValueDefinition: APIModel {

    public var displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition?

    public var key: String?

    public init(displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition? = nil, key: String? = nil) {
        self.displayProperties = displayProperties
        self.key = key
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        displayProperties = try container.decodeIfPresent("displayProperties")
        key = try container.decodeIfPresent("key")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(displayProperties, forKey: "displayProperties")
        try container.encodeIfPresent(key, forKey: "key")
    }

    public static func == (lhs: DestinyDefinitionsMilestonesDestinyMilestoneValueDefinition, rhs: DestinyDefinitionsMilestonesDestinyMilestoneValueDefinition) -> Bool {
        guard lhs.displayProperties == rhs.displayProperties else { return false }
        guard lhs.key == rhs.key else { return false }
        return true
    }
}
