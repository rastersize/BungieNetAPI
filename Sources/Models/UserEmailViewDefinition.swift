//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Represents a data-driven view for Email settings. Web/Mobile UI can use this data to show new EMail settings consistently without further manual work. */
public struct UserEmailViewDefinition: APIModel {

    /** The identifier for this view. */
    public var name: String?

    /** The ordered list of settings to show in this view. */
    public var viewSettings: [UserEmailViewDefinitionSetting]?

    public init(name: String? = nil, viewSettings: [UserEmailViewDefinitionSetting]? = nil) {
        self.name = name
        self.viewSettings = viewSettings
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        name = try container.decodeIfPresent("name")
        viewSettings = try container.decodeArrayIfPresent("viewSettings")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(viewSettings, forKey: "viewSettings")
    }

    public static func == (lhs: UserEmailViewDefinition, rhs: UserEmailViewDefinition) -> Bool {
        guard lhs.name == rhs.name else { return false }
        guard lhs.viewSettings == rhs.viewSettings else { return false }
        return true
    }
}
