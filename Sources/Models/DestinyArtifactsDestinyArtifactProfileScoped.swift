//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Represents a Seasonal Artifact and all data related to it for the requested Account.
It can be combined with Character-scoped data for a full picture of what a character has available/has chosen, or just these settings can be used for overview information. */
public struct DestinyArtifactsDestinyArtifactProfileScoped: APIModel {

    public var artifactHash: Int?

    public var pointProgression: DestinyDestinyProgression?

    public var pointsAcquired: Int?

    public var powerBonus: Int?

    public var powerBonusProgression: DestinyDestinyProgression?

    public init(artifactHash: Int? = nil, pointProgression: DestinyDestinyProgression? = nil, pointsAcquired: Int? = nil, powerBonus: Int? = nil, powerBonusProgression: DestinyDestinyProgression? = nil) {
        self.artifactHash = artifactHash
        self.pointProgression = pointProgression
        self.pointsAcquired = pointsAcquired
        self.powerBonus = powerBonus
        self.powerBonusProgression = powerBonusProgression
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        artifactHash = try container.decodeIfPresent("artifactHash")
        pointProgression = try container.decodeIfPresent("pointProgression")
        pointsAcquired = try container.decodeIfPresent("pointsAcquired")
        powerBonus = try container.decodeIfPresent("powerBonus")
        powerBonusProgression = try container.decodeIfPresent("powerBonusProgression")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(artifactHash, forKey: "artifactHash")
        try container.encodeIfPresent(pointProgression, forKey: "pointProgression")
        try container.encodeIfPresent(pointsAcquired, forKey: "pointsAcquired")
        try container.encodeIfPresent(powerBonus, forKey: "powerBonus")
        try container.encodeIfPresent(powerBonusProgression, forKey: "powerBonusProgression")
    }

    public static func == (lhs: DestinyArtifactsDestinyArtifactProfileScoped, rhs: DestinyArtifactsDestinyArtifactProfileScoped) -> Bool {
        guard lhs.artifactHash == rhs.artifactHash else { return false }
        guard lhs.pointProgression == rhs.pointProgression else { return false }
        guard lhs.pointsAcquired == rhs.pointsAcquired else { return false }
        guard lhs.powerBonus == rhs.powerBonus else { return false }
        guard lhs.powerBonusProgression == rhs.powerBonusProgression else { return false }
        return true
    }
}
