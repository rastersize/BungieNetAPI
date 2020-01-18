//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ConfigGroupTheme: APIModel {

    public var description: String?

    public var folder: String?

    public var name: String?

    public init(description: String? = nil, folder: String? = nil, name: String? = nil) {
        self.description = description
        self.folder = folder
        self.name = name
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        description = try container.decodeIfPresent("description")
        folder = try container.decodeIfPresent("folder")
        name = try container.decodeIfPresent("name")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(folder, forKey: "folder")
        try container.encodeIfPresent(name, forKey: "name")
    }

    public static func == (lhs: ConfigGroupTheme, rhs: ConfigGroupTheme) -> Bool {
        guard lhs.description == rhs.description else { return false }
        guard lhs.folder == rhs.folder else { return false }
        guard lhs.name == rhs.name else { return false }
        return true
    }
}