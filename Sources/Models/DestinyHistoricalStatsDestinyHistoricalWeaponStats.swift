//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyHistoricalStatsDestinyHistoricalWeaponStats: APIModel {

    /** The hash ID of the item definition that describes the weapon. */
    public var referenceId: Int?

    /** Collection of stats for the period. */
    public var values: [String: DestinyHistoricalStatsDestinyHistoricalStatsValue]?

    public init(referenceId: Int? = nil, values: [String: DestinyHistoricalStatsDestinyHistoricalStatsValue]? = nil) {
        self.referenceId = referenceId
        self.values = values
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        referenceId = try container.decodeIfPresent("referenceId")
        values = try container.decodeIfPresent("values")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(referenceId, forKey: "referenceId")
        try container.encodeIfPresent(values, forKey: "values")
    }

    public static func == (lhs: DestinyHistoricalStatsDestinyHistoricalWeaponStats, rhs: DestinyHistoricalStatsDestinyHistoricalWeaponStats) -> Bool {
        guard lhs.referenceId == rhs.referenceId else { return false }
        guard lhs.values == rhs.values else { return false }
        return true
    }
}
