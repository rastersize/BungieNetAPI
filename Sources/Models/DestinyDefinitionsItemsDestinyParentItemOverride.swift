//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyDefinitionsItemsDestinyParentItemOverride: APIModel {

    public var additionalEquipRequirementsDisplayStrings: [String]?

    public var pipIcon: String?

    public init(additionalEquipRequirementsDisplayStrings: [String]? = nil, pipIcon: String? = nil) {
        self.additionalEquipRequirementsDisplayStrings = additionalEquipRequirementsDisplayStrings
        self.pipIcon = pipIcon
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        additionalEquipRequirementsDisplayStrings = try container.decodeArrayIfPresent("additionalEquipRequirementsDisplayStrings")
        pipIcon = try container.decodeIfPresent("pipIcon")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(additionalEquipRequirementsDisplayStrings, forKey: "additionalEquipRequirementsDisplayStrings")
        try container.encodeIfPresent(pipIcon, forKey: "pipIcon")
    }

    public static func == (lhs: DestinyDefinitionsItemsDestinyParentItemOverride, rhs: DestinyDefinitionsItemsDestinyParentItemOverride) -> Bool {
        guard lhs.additionalEquipRequirementsDisplayStrings == rhs.additionalEquipRequirementsDisplayStrings else { return false }
        guard lhs.pipIcon == rhs.pipIcon else { return false }
        return true
    }
}