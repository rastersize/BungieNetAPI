//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyHistoricalStatsDestinyHistoricalStatsWithMerged: APIModel {

    public var merged: DestinyHistoricalStatsDestinyHistoricalStatsByPeriod?

    public var results: [String: DestinyHistoricalStatsDestinyHistoricalStatsByPeriod]?

    public init(merged: DestinyHistoricalStatsDestinyHistoricalStatsByPeriod? = nil, results: [String: DestinyHistoricalStatsDestinyHistoricalStatsByPeriod]? = nil) {
        self.merged = merged
        self.results = results
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        merged = try container.decodeIfPresent("merged")
        results = try container.decodeIfPresent("results")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(merged, forKey: "merged")
        try container.encodeIfPresent(results, forKey: "results")
    }

    public static func == (lhs: DestinyHistoricalStatsDestinyHistoricalStatsWithMerged, rhs: DestinyHistoricalStatsDestinyHistoricalStatsWithMerged) -> Bool {
        guard lhs.merged == rhs.merged else { return false }
        guard lhs.results == rhs.results else { return false }
        return true
    }
}