//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyMilestonesDestinyMilestoneChallengeActivity: APIModel {

    public var activityHash: Int?

    /** The set of activity options for this activity, keyed by an identifier that's unique for this activity (not guaranteed to be unique between or across all activities, though should be unique for every *variant* of a given *conceptual* activity: for instance, the original D2 Raid has many variant DestinyActivityDefinitions. While other activities could potentially have the same option hashes, for any given D2 base Raid variant the hash will be unique).
As a concrete example of this data, the hashes you get for Raids will correspond to the currently active "Challenge Mode".
We don't have any human readable information for these, but saavy 3rd party app users could manually associate the key (a hash identifier for the "option" that is enabled/disabled) and the value (whether it's enabled or disabled presently)
On our side, we don't necessarily even know what these are used for (the game designers know, but we don't), and we have no human readable data for them. In order to use them, you will have to do some experimentation. */
    public var booleanActivityOptions: [String: Bool]?

    public var challenges: [DestinyChallengesDestinyChallengeStatus]?

    /** If returned, this is the index into the DestinyActivityDefinition's "loadouts" property, indicating the currently active loadout requirements. */
    public var loadoutRequirementIndex: Int?

    /** If the activity has modifiers, this will be the list of modifiers that all variants have in common. Perform lookups against DestinyActivityModifierDefinition which defines the modifier being applied to get at the modifier data.
Note that, in the DestiyActivityDefinition, you will see many more modifiers than this being referred to: those are all *possible* modifiers for the activity, not the active ones. Use only the active ones to match what's really live. */
    public var modifierHashes: [Int]?

    /** If the Activity has discrete "phases" that we can track, that info will be here. Otherwise, this value will be NULL. Note that this is a list and not a dictionary: the order implies the ascending order of phases or progression in this activity. */
    public var phases: [DestinyMilestonesDestinyMilestoneActivityPhase]?

    public init(activityHash: Int? = nil, booleanActivityOptions: [String: Bool]? = nil, challenges: [DestinyChallengesDestinyChallengeStatus]? = nil, loadoutRequirementIndex: Int? = nil, modifierHashes: [Int]? = nil, phases: [DestinyMilestonesDestinyMilestoneActivityPhase]? = nil) {
        self.activityHash = activityHash
        self.booleanActivityOptions = booleanActivityOptions
        self.challenges = challenges
        self.loadoutRequirementIndex = loadoutRequirementIndex
        self.modifierHashes = modifierHashes
        self.phases = phases
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        activityHash = try container.decodeIfPresent("activityHash")
        booleanActivityOptions = try container.decodeIfPresent("booleanActivityOptions")
        challenges = try container.decodeArrayIfPresent("challenges")
        loadoutRequirementIndex = try container.decodeIfPresent("loadoutRequirementIndex")
        modifierHashes = try container.decodeArrayIfPresent("modifierHashes")
        phases = try container.decodeArrayIfPresent("phases")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(activityHash, forKey: "activityHash")
        try container.encodeIfPresent(booleanActivityOptions, forKey: "booleanActivityOptions")
        try container.encodeIfPresent(challenges, forKey: "challenges")
        try container.encodeIfPresent(loadoutRequirementIndex, forKey: "loadoutRequirementIndex")
        try container.encodeIfPresent(modifierHashes, forKey: "modifierHashes")
        try container.encodeIfPresent(phases, forKey: "phases")
    }

    public static func == (lhs: DestinyMilestonesDestinyMilestoneChallengeActivity, rhs: DestinyMilestonesDestinyMilestoneChallengeActivity) -> Bool {
        guard lhs.activityHash == rhs.activityHash else { return false }
        guard lhs.booleanActivityOptions == rhs.booleanActivityOptions else { return false }
        guard lhs.challenges == rhs.challenges else { return false }
        guard lhs.loadoutRequirementIndex == rhs.loadoutRequirementIndex else { return false }
        guard lhs.modifierHashes == rhs.modifierHashes else { return false }
        guard lhs.phases == rhs.phases else { return false }
        return true
    }
}
