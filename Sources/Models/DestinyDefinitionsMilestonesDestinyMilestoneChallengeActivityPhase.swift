//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityPhase: APIModel {

    /** The hash identifier of the activity's phase. */
    public var phaseHash: Int?

    public init(phaseHash: Int? = nil) {
        self.phaseHash = phaseHash
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        phaseHash = try container.decodeIfPresent("phaseHash")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(phaseHash, forKey: "phaseHash")
    }

    public static func == (lhs: DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityPhase, rhs: DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityPhase) -> Bool {
        guard lhs.phaseHash == rhs.phaseHash else { return false }
        return true
    }
}
