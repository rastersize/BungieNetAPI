//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyDefinitionsDestinyProgressionDisplayPropertiesDefinition: APIModel {

    public var description: String?

    /** When progressions show your "experience" gained, that bar has units (i.e. "Experience", "Bad Dudes Snuffed Out", whatever). This is the localized string for that unit of measurement. */
    public var displayUnitsName: String?

    public var hasIcon: Bool?

    /** If this item has a high-res icon (at least for now, many things won't), then the path to that icon will be here. */
    public var highResIcon: String?

    /** Note that "icon" is sometimes misleading, and should be interpreted in the context of the entity. For instance, in Destiny 1 the DestinyRecordBookDefinition's icon was a big picture of a book.
But usually, it will be a small square image that you can use as... well, an icon.
They are currently represented as 96px x 96px images. */
    public var icon: String?

    public var name: String?

    public init(description: String? = nil, displayUnitsName: String? = nil, hasIcon: Bool? = nil, highResIcon: String? = nil, icon: String? = nil, name: String? = nil) {
        self.description = description
        self.displayUnitsName = displayUnitsName
        self.hasIcon = hasIcon
        self.highResIcon = highResIcon
        self.icon = icon
        self.name = name
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        description = try container.decodeIfPresent("description")
        displayUnitsName = try container.decodeIfPresent("displayUnitsName")
        hasIcon = try container.decodeIfPresent("hasIcon")
        highResIcon = try container.decodeIfPresent("highResIcon")
        icon = try container.decodeIfPresent("icon")
        name = try container.decodeIfPresent("name")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(displayUnitsName, forKey: "displayUnitsName")
        try container.encodeIfPresent(hasIcon, forKey: "hasIcon")
        try container.encodeIfPresent(highResIcon, forKey: "highResIcon")
        try container.encodeIfPresent(icon, forKey: "icon")
        try container.encodeIfPresent(name, forKey: "name")
    }

    public static func == (lhs: DestinyDefinitionsDestinyProgressionDisplayPropertiesDefinition, rhs: DestinyDefinitionsDestinyProgressionDisplayPropertiesDefinition) -> Bool {
        guard lhs.description == rhs.description else { return false }
        guard lhs.displayUnitsName == rhs.displayUnitsName else { return false }
        guard lhs.hasIcon == rhs.hasIcon else { return false }
        guard lhs.highResIcon == rhs.highResIcon else { return false }
        guard lhs.icon == rhs.icon else { return false }
        guard lhs.name == rhs.name else { return false }
        return true
    }
}