//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyHistoricalStatsDestinyLeaderboardResults: APIModel {

    /** Indicate the character ID of the character that is the focal point of the provided leaderboards. May be null, in which case any character from the focus membership can appear in the provided leaderboards. */
    public var focusCharacterId: Int?

    /** Indicate the membership ID of the account that is the focal point of the provided leaderboards. */
    public var focusMembershipId: Int?

    public var additionalProperties: [String: [String: DestinyHistoricalStatsDestinyLeaderboard]] = [:]

    public init(focusCharacterId: Int? = nil, focusMembershipId: Int? = nil) {
        self.focusCharacterId = focusCharacterId
        self.focusMembershipId = focusMembershipId
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        focusCharacterId = try container.decodeIfPresent("focusCharacterId")
        focusMembershipId = try container.decodeIfPresent("focusMembershipId")

        let additionalPropertiesContainer = try decoder.container(keyedBy: StringCodingKey.self)
        var additionalProperties = try additionalPropertiesContainer.toDictionary()
        additionalProperties.removeValue(forKey: "focusCharacterId")
        additionalProperties.removeValue(forKey: "focusMembershipId")
        var decodedAdditionalProperties: [String: [String: DestinyHistoricalStatsDestinyLeaderboard]] = [:]
        for key in additionalProperties.keys {
            decodedAdditionalProperties[key] = try additionalPropertiesContainer.decode(StringCodingKey(string: key))
        }
        self.additionalProperties = decodedAdditionalProperties
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(focusCharacterId, forKey: "focusCharacterId")
        try container.encodeIfPresent(focusMembershipId, forKey: "focusMembershipId")

        var additionalPropertiesContainer = encoder.container(keyedBy: StringCodingKey.self)
        for (key, value) in additionalProperties {
            try additionalPropertiesContainer.encode(value, forKey: StringCodingKey(string: key))
        }
    }

    public subscript(key: String) -> [String: DestinyHistoricalStatsDestinyLeaderboard]? {
        get {
            return additionalProperties[key]
        }
        set {
            additionalProperties[key] = newValue
        }
    }

    public static func == (lhs: DestinyHistoricalStatsDestinyLeaderboardResults, rhs: DestinyHistoricalStatsDestinyLeaderboardResults) -> Bool {
        guard lhs.focusCharacterId == rhs.focusCharacterId else { return false }
        guard lhs.focusMembershipId == rhs.focusMembershipId else { return false }
        guard NSDictionary(dictionary: lhs.additionalProperties).isEqual(to: rhs.additionalProperties) else { return false }
        return true
    }
}