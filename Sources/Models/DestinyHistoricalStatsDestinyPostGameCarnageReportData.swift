//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyHistoricalStatsDestinyPostGameCarnageReportData: APIModel {

    /** Details about the activity. */
    public var activityDetails: [String: Any]?

    /** Collection of players and their data for this activity. */
    public var entries: [DestinyHistoricalStatsDestinyPostGameCarnageReportEntry]?

    /** Date and time for the activity. */
    public var period: DateTime?

    /** If this activity has "phases", this is the phase at which the activity was started. */
    public var startingPhaseIndex: Int?

    /** Collection of stats for the player in this activity. */
    public var teams: [DestinyHistoricalStatsDestinyPostGameCarnageReportTeamEntry]?

    public init(activityDetails: [String: Any]? = nil, entries: [DestinyHistoricalStatsDestinyPostGameCarnageReportEntry]? = nil, period: DateTime? = nil, startingPhaseIndex: Int? = nil, teams: [DestinyHistoricalStatsDestinyPostGameCarnageReportTeamEntry]? = nil) {
        self.activityDetails = activityDetails
        self.entries = entries
        self.period = period
        self.startingPhaseIndex = startingPhaseIndex
        self.teams = teams
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        activityDetails = try container.decodeAnyIfPresent("activityDetails")
        entries = try container.decodeArrayIfPresent("entries")
        period = try container.decodeIfPresent("period")
        startingPhaseIndex = try container.decodeIfPresent("startingPhaseIndex")
        teams = try container.decodeArrayIfPresent("teams")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeAnyIfPresent(activityDetails, forKey: "activityDetails")
        try container.encodeIfPresent(entries, forKey: "entries")
        try container.encodeIfPresent(period, forKey: "period")
        try container.encodeIfPresent(startingPhaseIndex, forKey: "startingPhaseIndex")
        try container.encodeIfPresent(teams, forKey: "teams")
    }

    public static func == (lhs: DestinyHistoricalStatsDestinyPostGameCarnageReportData, rhs: DestinyHistoricalStatsDestinyPostGameCarnageReportData) -> Bool {
        guard NSDictionary(dictionary: lhs.activityDetails ?? [:]).isEqual(to: rhs.activityDetails ?? [:]) else { return false }
        guard lhs.entries == rhs.entries else { return false }
        guard lhs.period == rhs.period else { return false }
        guard lhs.startingPhaseIndex == rhs.startingPhaseIndex else { return false }
        guard lhs.teams == rhs.teams else { return false }
        return true
    }
}
