//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Information about a current character's status with a Progression. A progression is a value that can increase with activity and has levels. Think Character Level and Reputation Levels. Combine this "live" data with the related DestinyProgressionDefinition for a full picture of the Progression. */
public struct DestinyDestinyProgression: APIModel {

    /** This is the total amount of progress obtained overall for this progression (for instance, the total amount of Character Level experience earned) */
    public var currentProgress: Int?

    /** The number of resets of this progression you've executed this season, if applicable to this progression. */
    public var currentResetCount: Int?

    /** If this progression has a daily limit, this is that limit. */
    public var dailyLimit: Int?

    /** The amount of progress earned today for this progression. */
    public var dailyProgress: Int?

    /** This is the level of the progression (for instance, the Character Level). */
    public var level: Int?

    /** This is the maximum possible level you can achieve for this progression (for example, the maximum character level obtainable) */
    public var levelCap: Int?

    /** The total amount of progression (i.e. "Experience") needed in order to reach the next level. */
    public var nextLevelAt: Int?

    /** The amount of progression (i.e. "Experience") needed to reach the next level of this Progression. Jeez, progression is such an overloaded word. */
    public var progressToNextLevel: Int?

    /** The hash identifier of the Progression in question. Use it to look up the DestinyProgressionDefinition in static data. */
    public var progressionHash: Int?

    /** Information about historical rewards for this progression, if there is any data for it. */
    public var rewardItemStates: [Int]?

    /** Information about historical resets of this progression, if there is any data for it. */
    public var seasonResets: [DestinyDestinyProgressionResetEntry]?

    /** Progressions define their levels in "steps". Since the last step may be repeatable, the user may be at a higher level than the actual Step achieved in the progression. Not necessarily useful, but potentially interesting for those cruising the API. Relate this to the "steps" property of the DestinyProgression to see which step the user is on, if you care about that. (Note that this is Content Version dependent since it refers to indexes.) */
    public var stepIndex: Int?

    /** If this progression has a weekly limit, this is that limit. */
    public var weeklyLimit: Int?

    /** The amount of progress earned toward this progression in the current week. */
    public var weeklyProgress: Int?

    public init(currentProgress: Int? = nil, currentResetCount: Int? = nil, dailyLimit: Int? = nil, dailyProgress: Int? = nil, level: Int? = nil, levelCap: Int? = nil, nextLevelAt: Int? = nil, progressToNextLevel: Int? = nil, progressionHash: Int? = nil, rewardItemStates: [Int]? = nil, seasonResets: [DestinyDestinyProgressionResetEntry]? = nil, stepIndex: Int? = nil, weeklyLimit: Int? = nil, weeklyProgress: Int? = nil) {
        self.currentProgress = currentProgress
        self.currentResetCount = currentResetCount
        self.dailyLimit = dailyLimit
        self.dailyProgress = dailyProgress
        self.level = level
        self.levelCap = levelCap
        self.nextLevelAt = nextLevelAt
        self.progressToNextLevel = progressToNextLevel
        self.progressionHash = progressionHash
        self.rewardItemStates = rewardItemStates
        self.seasonResets = seasonResets
        self.stepIndex = stepIndex
        self.weeklyLimit = weeklyLimit
        self.weeklyProgress = weeklyProgress
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        currentProgress = try container.decodeIfPresent("currentProgress")
        currentResetCount = try container.decodeIfPresent("currentResetCount")
        dailyLimit = try container.decodeIfPresent("dailyLimit")
        dailyProgress = try container.decodeIfPresent("dailyProgress")
        level = try container.decodeIfPresent("level")
        levelCap = try container.decodeIfPresent("levelCap")
        nextLevelAt = try container.decodeIfPresent("nextLevelAt")
        progressToNextLevel = try container.decodeIfPresent("progressToNextLevel")
        progressionHash = try container.decodeIfPresent("progressionHash")
        rewardItemStates = try container.decodeArrayIfPresent("rewardItemStates")
        seasonResets = try container.decodeArrayIfPresent("seasonResets")
        stepIndex = try container.decodeIfPresent("stepIndex")
        weeklyLimit = try container.decodeIfPresent("weeklyLimit")
        weeklyProgress = try container.decodeIfPresent("weeklyProgress")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(currentProgress, forKey: "currentProgress")
        try container.encodeIfPresent(currentResetCount, forKey: "currentResetCount")
        try container.encodeIfPresent(dailyLimit, forKey: "dailyLimit")
        try container.encodeIfPresent(dailyProgress, forKey: "dailyProgress")
        try container.encodeIfPresent(level, forKey: "level")
        try container.encodeIfPresent(levelCap, forKey: "levelCap")
        try container.encodeIfPresent(nextLevelAt, forKey: "nextLevelAt")
        try container.encodeIfPresent(progressToNextLevel, forKey: "progressToNextLevel")
        try container.encodeIfPresent(progressionHash, forKey: "progressionHash")
        try container.encodeIfPresent(rewardItemStates, forKey: "rewardItemStates")
        try container.encodeIfPresent(seasonResets, forKey: "seasonResets")
        try container.encodeIfPresent(stepIndex, forKey: "stepIndex")
        try container.encodeIfPresent(weeklyLimit, forKey: "weeklyLimit")
        try container.encodeIfPresent(weeklyProgress, forKey: "weeklyProgress")
    }

    public static func == (lhs: DestinyDestinyProgression, rhs: DestinyDestinyProgression) -> Bool {
        guard lhs.currentProgress == rhs.currentProgress else { return false }
        guard lhs.currentResetCount == rhs.currentResetCount else { return false }
        guard lhs.dailyLimit == rhs.dailyLimit else { return false }
        guard lhs.dailyProgress == rhs.dailyProgress else { return false }
        guard lhs.level == rhs.level else { return false }
        guard lhs.levelCap == rhs.levelCap else { return false }
        guard lhs.nextLevelAt == rhs.nextLevelAt else { return false }
        guard lhs.progressToNextLevel == rhs.progressToNextLevel else { return false }
        guard lhs.progressionHash == rhs.progressionHash else { return false }
        guard lhs.rewardItemStates == rhs.rewardItemStates else { return false }
        guard lhs.seasonResets == rhs.seasonResets else { return false }
        guard lhs.stepIndex == rhs.stepIndex else { return false }
        guard lhs.weeklyLimit == rhs.weeklyLimit else { return false }
        guard lhs.weeklyProgress == rhs.weeklyProgress else { return false }
        return true
    }
}