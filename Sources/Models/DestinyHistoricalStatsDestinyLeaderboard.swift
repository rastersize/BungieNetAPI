//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyHistoricalStatsDestinyLeaderboard: APIModel {

    public var entries: [DestinyHistoricalStatsDestinyLeaderboardEntry]?

    public var statId: String?

    public init(entries: [DestinyHistoricalStatsDestinyLeaderboardEntry]? = nil, statId: String? = nil) {
        self.entries = entries
        self.statId = statId
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        entries = try container.decodeArrayIfPresent("entries")
        statId = try container.decodeIfPresent("statId")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(entries, forKey: "entries")
        try container.encodeIfPresent(statId, forKey: "statId")
    }

    public static func == (lhs: DestinyHistoricalStatsDestinyLeaderboard, rhs: DestinyHistoricalStatsDestinyLeaderboard) -> Bool {
        guard lhs.entries == rhs.entries else { return false }
        guard lhs.statId == rhs.statId else { return false }
        return true
    }
}
