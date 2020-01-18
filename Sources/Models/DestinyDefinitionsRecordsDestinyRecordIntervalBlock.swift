//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyDefinitionsRecordsDestinyRecordIntervalBlock: APIModel {

    public var intervalObjectives: [DestinyDefinitionsRecordsDestinyRecordIntervalObjective]?

    public var originalObjectiveArrayInsertionIndex: Int?

    public init(intervalObjectives: [DestinyDefinitionsRecordsDestinyRecordIntervalObjective]? = nil, originalObjectiveArrayInsertionIndex: Int? = nil) {
        self.intervalObjectives = intervalObjectives
        self.originalObjectiveArrayInsertionIndex = originalObjectiveArrayInsertionIndex
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        intervalObjectives = try container.decodeArrayIfPresent("intervalObjectives")
        originalObjectiveArrayInsertionIndex = try container.decodeIfPresent("originalObjectiveArrayInsertionIndex")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(intervalObjectives, forKey: "intervalObjectives")
        try container.encodeIfPresent(originalObjectiveArrayInsertionIndex, forKey: "originalObjectiveArrayInsertionIndex")
    }

    public static func == (lhs: DestinyDefinitionsRecordsDestinyRecordIntervalBlock, rhs: DestinyDefinitionsRecordsDestinyRecordIntervalBlock) -> Bool {
        guard lhs.intervalObjectives == rhs.intervalObjectives else { return false }
        guard lhs.originalObjectiveArrayInsertionIndex == rhs.originalObjectiveArrayInsertionIndex else { return false }
        return true
    }
}
