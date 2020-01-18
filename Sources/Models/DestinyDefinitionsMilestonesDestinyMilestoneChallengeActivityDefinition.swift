//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityDefinition: APIModel {

    /** If the activity and its challenge is visible on any of these nodes, it will be returned. */
    public var activityGraphNodes: [DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityGraphNodeEntry]?

    /** The activity for which this challenge is active. */
    public var activityHash: Int?

    public var challenges: [DestinyDefinitionsMilestonesDestinyMilestoneChallengeDefinition]?

    /** Phases related to this activity, if there are any.
These will be listed in the order in which they will appear in the actual activity. */
    public var phases: [DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityPhase]?

    public init(activityGraphNodes: [DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityGraphNodeEntry]? = nil, activityHash: Int? = nil, challenges: [DestinyDefinitionsMilestonesDestinyMilestoneChallengeDefinition]? = nil, phases: [DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityPhase]? = nil) {
        self.activityGraphNodes = activityGraphNodes
        self.activityHash = activityHash
        self.challenges = challenges
        self.phases = phases
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        activityGraphNodes = try container.decodeArrayIfPresent("activityGraphNodes")
        activityHash = try container.decodeIfPresent("activityHash")
        challenges = try container.decodeArrayIfPresent("challenges")
        phases = try container.decodeArrayIfPresent("phases")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(activityGraphNodes, forKey: "activityGraphNodes")
        try container.encodeIfPresent(activityHash, forKey: "activityHash")
        try container.encodeIfPresent(challenges, forKey: "challenges")
        try container.encodeIfPresent(phases, forKey: "phases")
    }

    public static func == (lhs: DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityDefinition, rhs: DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityDefinition) -> Bool {
        guard lhs.activityGraphNodes == rhs.activityGraphNodes else { return false }
        guard lhs.activityHash == rhs.activityHash else { return false }
        guard lhs.challenges == rhs.challenges else { return false }
        guard lhs.phases == rhs.phases else { return false }
        return true
    }
}
