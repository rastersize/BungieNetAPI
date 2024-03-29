//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct TagsModelsContractsTagResponse: APIModel {

    public var ignoreStatus: IgnoresIgnoreResponse?

    public var tagText: String?

    public init(ignoreStatus: IgnoresIgnoreResponse? = nil, tagText: String? = nil) {
        self.ignoreStatus = ignoreStatus
        self.tagText = tagText
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        ignoreStatus = try container.decodeIfPresent("ignoreStatus")
        tagText = try container.decodeIfPresent("tagText")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(ignoreStatus, forKey: "ignoreStatus")
        try container.encodeIfPresent(tagText, forKey: "tagText")
    }

    public static func == (lhs: TagsModelsContractsTagResponse, rhs: TagsModelsContractsTagResponse) -> Bool {
        guard lhs.ignoreStatus == rhs.ignoreStatus else { return false }
        guard lhs.tagText == rhs.tagText else { return false }
        return true
    }
}
