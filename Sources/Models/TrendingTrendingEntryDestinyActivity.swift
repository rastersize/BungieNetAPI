//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct TrendingTrendingEntryDestinyActivity: APIModel {

    public var activityHash: Int?

    public var status: DestinyActivitiesDestinyPublicActivityStatus?

    public init(activityHash: Int? = nil, status: DestinyActivitiesDestinyPublicActivityStatus? = nil) {
        self.activityHash = activityHash
        self.status = status
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        activityHash = try container.decodeIfPresent("activityHash")
        status = try container.decodeIfPresent("status")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(activityHash, forKey: "activityHash")
        try container.encodeIfPresent(status, forKey: "status")
    }

    public static func == (lhs: TrendingTrendingEntryDestinyActivity, rhs: TrendingTrendingEntryDestinyActivity) -> Bool {
        guard lhs.activityHash == rhs.activityHash else { return false }
        guard lhs.status == rhs.status else { return false }
        return true
    }
}
