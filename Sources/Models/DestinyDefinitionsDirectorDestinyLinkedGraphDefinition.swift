//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** This describes links between the current graph and others, as well as when that link is relevant. */
public struct DestinyDefinitionsDirectorDestinyLinkedGraphDefinition: APIModel {

    public var description: String?

    public var linkedGraphId: Int?

    public var linkedGraphs: [DestinyDefinitionsDirectorDestinyLinkedGraphEntryDefinition]?

    public var name: String?

    public var overview: String?

    public var unlockExpression: DestinyDefinitionsDestinyUnlockExpressionDefinition?

    public init(description: String? = nil, linkedGraphId: Int? = nil, linkedGraphs: [DestinyDefinitionsDirectorDestinyLinkedGraphEntryDefinition]? = nil, name: String? = nil, overview: String? = nil, unlockExpression: DestinyDefinitionsDestinyUnlockExpressionDefinition? = nil) {
        self.description = description
        self.linkedGraphId = linkedGraphId
        self.linkedGraphs = linkedGraphs
        self.name = name
        self.overview = overview
        self.unlockExpression = unlockExpression
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        description = try container.decodeIfPresent("description")
        linkedGraphId = try container.decodeIfPresent("linkedGraphId")
        linkedGraphs = try container.decodeArrayIfPresent("linkedGraphs")
        name = try container.decodeIfPresent("name")
        overview = try container.decodeIfPresent("overview")
        unlockExpression = try container.decodeIfPresent("unlockExpression")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(linkedGraphId, forKey: "linkedGraphId")
        try container.encodeIfPresent(linkedGraphs, forKey: "linkedGraphs")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(overview, forKey: "overview")
        try container.encodeIfPresent(unlockExpression, forKey: "unlockExpression")
    }

    public static func == (lhs: DestinyDefinitionsDirectorDestinyLinkedGraphDefinition, rhs: DestinyDefinitionsDirectorDestinyLinkedGraphDefinition) -> Bool {
        guard lhs.description == rhs.description else { return false }
        guard lhs.linkedGraphId == rhs.linkedGraphId else { return false }
        guard lhs.linkedGraphs == rhs.linkedGraphs else { return false }
        guard lhs.name == rhs.name else { return false }
        guard lhs.overview == rhs.overview else { return false }
        guard lhs.unlockExpression == rhs.unlockExpression else { return false }
        return true
    }
}
