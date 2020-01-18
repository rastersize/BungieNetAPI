//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ContentModelsTagMetadataItem: APIModel {

    public var description: String?

    public var groups: [String]?

    public var isDefault: Bool?

    public var name: String?

    public var tagText: String?

    public init(description: String? = nil, groups: [String]? = nil, isDefault: Bool? = nil, name: String? = nil, tagText: String? = nil) {
        self.description = description
        self.groups = groups
        self.isDefault = isDefault
        self.name = name
        self.tagText = tagText
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        description = try container.decodeIfPresent("description")
        groups = try container.decodeArrayIfPresent("groups")
        isDefault = try container.decodeIfPresent("isDefault")
        name = try container.decodeIfPresent("name")
        tagText = try container.decodeIfPresent("tagText")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(groups, forKey: "groups")
        try container.encodeIfPresent(isDefault, forKey: "isDefault")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(tagText, forKey: "tagText")
    }

    public static func == (lhs: ContentModelsTagMetadataItem, rhs: ContentModelsTagMetadataItem) -> Bool {
        guard lhs.description == rhs.description else { return false }
        guard lhs.groups == rhs.groups else { return false }
        guard lhs.isDefault == rhs.isDefault else { return false }
        guard lhs.name == rhs.name else { return false }
        guard lhs.tagText == rhs.tagText else { return false }
        return true
    }
}
