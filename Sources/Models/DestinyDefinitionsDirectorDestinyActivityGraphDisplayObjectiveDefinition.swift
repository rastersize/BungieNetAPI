//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** When a Graph needs to show active Objectives, this defines those objectives as well as an identifier. */
public struct DestinyDefinitionsDirectorDestinyActivityGraphDisplayObjectiveDefinition: APIModel {

    /** $NOTE $amola 2017-01-19 This field is apparently something that CUI uses to manually wire up objectives to display info. I am unsure how it works. */
    public var id: Int?

    /** The objective being shown on the map. */
    public var objectiveHash: Int?

    public init(id: Int? = nil, objectiveHash: Int? = nil) {
        self.id = id
        self.objectiveHash = objectiveHash
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decodeIfPresent("id")
        objectiveHash = try container.decodeIfPresent("objectiveHash")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(objectiveHash, forKey: "objectiveHash")
    }

    public static func == (lhs: DestinyDefinitionsDirectorDestinyActivityGraphDisplayObjectiveDefinition, rhs: DestinyDefinitionsDirectorDestinyActivityGraphDisplayObjectiveDefinition) -> Bool {
        guard lhs.id == rhs.id else { return false }
        guard lhs.objectiveHash == rhs.objectiveHash else { return false }
        return true
    }
}
