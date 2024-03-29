//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyDefinitionsRecordsDestinyRecordIntervalObjective: APIModel {

    public var intervalObjectiveHash: Int?

    public var intervalScoreValue: Int?

    public init(intervalObjectiveHash: Int? = nil, intervalScoreValue: Int? = nil) {
        self.intervalObjectiveHash = intervalObjectiveHash
        self.intervalScoreValue = intervalScoreValue
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        intervalObjectiveHash = try container.decodeIfPresent("intervalObjectiveHash")
        intervalScoreValue = try container.decodeIfPresent("intervalScoreValue")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(intervalObjectiveHash, forKey: "intervalObjectiveHash")
        try container.encodeIfPresent(intervalScoreValue, forKey: "intervalScoreValue")
    }

    public static func == (lhs: DestinyDefinitionsRecordsDestinyRecordIntervalObjective, rhs: DestinyDefinitionsRecordsDestinyRecordIntervalObjective) -> Bool {
        guard lhs.intervalObjectiveHash == rhs.intervalObjectiveHash else { return false }
        guard lhs.intervalScoreValue == rhs.intervalScoreValue else { return false }
        return true
    }
}
