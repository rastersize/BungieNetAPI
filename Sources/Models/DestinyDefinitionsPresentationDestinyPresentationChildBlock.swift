//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyDefinitionsPresentationDestinyPresentationChildBlock: APIModel {

    public var displayStyle: Int?

    public var parentPresentationNodeHashes: [Int]?

    public var presentationNodeType: Int?

    public init(displayStyle: Int? = nil, parentPresentationNodeHashes: [Int]? = nil, presentationNodeType: Int? = nil) {
        self.displayStyle = displayStyle
        self.parentPresentationNodeHashes = parentPresentationNodeHashes
        self.presentationNodeType = presentationNodeType
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        displayStyle = try container.decodeIfPresent("displayStyle")
        parentPresentationNodeHashes = try container.decodeArrayIfPresent("parentPresentationNodeHashes")
        presentationNodeType = try container.decodeIfPresent("presentationNodeType")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(displayStyle, forKey: "displayStyle")
        try container.encodeIfPresent(parentPresentationNodeHashes, forKey: "parentPresentationNodeHashes")
        try container.encodeIfPresent(presentationNodeType, forKey: "presentationNodeType")
    }

    public static func == (lhs: DestinyDefinitionsPresentationDestinyPresentationChildBlock, rhs: DestinyDefinitionsPresentationDestinyPresentationChildBlock) -> Bool {
        guard lhs.displayStyle == rhs.displayStyle else { return false }
        guard lhs.parentPresentationNodeHashes == rhs.parentPresentationNodeHashes else { return false }
        guard lhs.presentationNodeType == rhs.presentationNodeType else { return false }
        return true
    }
}