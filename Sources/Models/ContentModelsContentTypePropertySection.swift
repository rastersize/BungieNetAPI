//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ContentModelsContentTypePropertySection: APIModel {

    public var collapsed: Bool?

    public var name: String?

    public var readableName: String?

    public init(collapsed: Bool? = nil, name: String? = nil, readableName: String? = nil) {
        self.collapsed = collapsed
        self.name = name
        self.readableName = readableName
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        collapsed = try container.decodeIfPresent("collapsed")
        name = try container.decodeIfPresent("name")
        readableName = try container.decodeIfPresent("readableName")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(collapsed, forKey: "collapsed")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(readableName, forKey: "readableName")
    }

    public static func == (lhs: ContentModelsContentTypePropertySection, rhs: ContentModelsContentTypePropertySection) -> Bool {
        guard lhs.collapsed == rhs.collapsed else { return false }
        guard lhs.name == rhs.name else { return false }
        guard lhs.readableName == rhs.readableName else { return false }
        return true
    }
}