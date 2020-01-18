//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyArtifactsDestinyArtifactTier: APIModel {

    public var isUnlocked: Bool?

    public var items: [DestinyArtifactsDestinyArtifactTierItem]?

    public var pointsToUnlock: Int?

    public var tierHash: Int?

    public init(isUnlocked: Bool? = nil, items: [DestinyArtifactsDestinyArtifactTierItem]? = nil, pointsToUnlock: Int? = nil, tierHash: Int? = nil) {
        self.isUnlocked = isUnlocked
        self.items = items
        self.pointsToUnlock = pointsToUnlock
        self.tierHash = tierHash
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        isUnlocked = try container.decodeIfPresent("isUnlocked")
        items = try container.decodeArrayIfPresent("items")
        pointsToUnlock = try container.decodeIfPresent("pointsToUnlock")
        tierHash = try container.decodeIfPresent("tierHash")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(isUnlocked, forKey: "isUnlocked")
        try container.encodeIfPresent(items, forKey: "items")
        try container.encodeIfPresent(pointsToUnlock, forKey: "pointsToUnlock")
        try container.encodeIfPresent(tierHash, forKey: "tierHash")
    }

    public static func == (lhs: DestinyArtifactsDestinyArtifactTier, rhs: DestinyArtifactsDestinyArtifactTier) -> Bool {
        guard lhs.isUnlocked == rhs.isUnlocked else { return false }
        guard lhs.items == rhs.items else { return false }
        guard lhs.pointsToUnlock == rhs.pointsToUnlock else { return false }
        guard lhs.tierHash == rhs.tierHash else { return false }
        return true
    }
}
