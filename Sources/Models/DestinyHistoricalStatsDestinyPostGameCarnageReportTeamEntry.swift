//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyHistoricalStatsDestinyPostGameCarnageReportTeamEntry: APIModel {

    /** Score earned by the team */
    public var score: [String: Any]?

    /** Team's standing relative to other teams. */
    public var standing: [String: Any]?

    /** Integer ID for the team. */
    public var teamId: Int?

    /** Alpha or Bravo */
    public var teamName: String?

    public init(score: [String: Any]? = nil, standing: [String: Any]? = nil, teamId: Int? = nil, teamName: String? = nil) {
        self.score = score
        self.standing = standing
        self.teamId = teamId
        self.teamName = teamName
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        score = try container.decodeAnyIfPresent("score")
        standing = try container.decodeAnyIfPresent("standing")
        teamId = try container.decodeIfPresent("teamId")
        teamName = try container.decodeIfPresent("teamName")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeAnyIfPresent(score, forKey: "score")
        try container.encodeAnyIfPresent(standing, forKey: "standing")
        try container.encodeIfPresent(teamId, forKey: "teamId")
        try container.encodeIfPresent(teamName, forKey: "teamName")
    }

    public static func == (lhs: DestinyHistoricalStatsDestinyPostGameCarnageReportTeamEntry, rhs: DestinyHistoricalStatsDestinyPostGameCarnageReportTeamEntry) -> Bool {
        guard NSDictionary(dictionary: lhs.score ?? [:]).isEqual(to: rhs.score ?? [:]) else { return false }
        guard NSDictionary(dictionary: lhs.standing ?? [:]).isEqual(to: rhs.standing ?? [:]) else { return false }
        guard lhs.teamId == rhs.teamId else { return false }
        guard lhs.teamName == rhs.teamName else { return false }
        return true
    }
}
