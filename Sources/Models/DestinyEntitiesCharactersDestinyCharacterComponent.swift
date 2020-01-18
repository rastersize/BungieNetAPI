//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** This component contains base properties of the character. You'll probably want to always request this component, but hey you do you. */
public struct DestinyEntitiesCharactersDestinyCharacterComponent: APIModel {

    /** The "base" level of your character, not accounting for any light level. */
    public var baseCharacterLevel: Int?

    /** The unique identifier for the character. */
    public var characterId: Int?

    /** Use this hash to look up the character's DestinyClassDefinition. */
    public var classHash: Int?

    /** Mostly for historical purposes at this point, this is an enumeration for the character's class.
It'll be preferable in the general case to look up the related definition: but for some people this was too convenient to remove. */
    public var classType: Int?

    /** The last date that the user played Destiny. */
    public var dateLastPlayed: DateTime?

    /** A shortcut path to the user's currently equipped emblem background image. If you're just showing summary info for a user, this is more convenient than examining their equipped emblem and looking up the definition. */
    public var emblemBackgroundPath: String?

    /** A shortcut for getting the background color of the user's currently equipped emblem without having to do a DestinyInventoryItemDefinition lookup. */
    public var emblemColor: [String: Any]?

    /** The hash of the currently equipped emblem for the user. Can be used to look up the DestinyInventoryItemDefinition. */
    public var emblemHash: Int?

    /** A shortcut path to the user's currently equipped emblem image. If you're just showing summary info for a user, this is more convenient than examining their equipped emblem and looking up the definition. */
    public var emblemPath: String?

    /** Use this hash to look up the character's DestinyGenderDefinition. */
    public var genderHash: Int?

    /** Mostly for historical purposes at this point, this is an enumeration for the character's Gender.
It'll be preferable in the general case to look up the related definition: but for some people this was too convenient to remove. And yeah, it's an enumeration and not a boolean. Fight me. */
    public var genderType: Int?

    /** The progression that indicates your character's level. Not their light level, but their character level: you know, the thing you max out a couple hours in and then ignore for the sake of light level. */
    public var levelProgression: [String: Any]?

    /** The user's calculated "Light Level". Light level is an indicator of your power that mostly matters in the end game, once you've reached the maximum character level: it's a level that's dependent on the average Attack/Defense power of your items. */
    public var light: Int?

    /** Every Destiny Profile has a membershipId. This is provided on the character as well for convenience. */
    public var membershipId: Int?

    /** membershipType tells you the platform on which the character plays. Examine the BungieMembershipType enumeration for possible values. */
    public var membershipType: Int?

    /** If the user is currently playing, this is how long they've been playing. */
    public var minutesPlayedThisSession: Int?

    /** If this value is 525,600, then they played Destiny for a year. Or they're a very dedicated Rent fan. Note that this includes idle time, not just time spent actually in activities shooting things. */
    public var minutesPlayedTotal: Int?

    /** A number between 0 and 100, indicating the whole and fractional % remaining to get to the next character level. */
    public var percentToNextLevel: Float?

    /** Use this hash to look up the character's DestinyRaceDefinition. */
    public var raceHash: Int?

    /** Mostly for historical purposes at this point, this is an enumeration for the character's race.
It'll be preferable in the general case to look up the related definition: but for some people this was too convenient to remove. */
    public var raceType: Int?

    /** Your character's stats, such as Agility, Resilience, etc... *not* historical stats.
You'll have to call a different endpoint for those. */
    public var stats: [String: Int]?

    /** If this Character has a title assigned to it, this is the identifier of the DestinyRecordDefinition that has that title information. */
    public var titleRecordHash: Int?

    public init(baseCharacterLevel: Int? = nil, characterId: Int? = nil, classHash: Int? = nil, classType: Int? = nil, dateLastPlayed: DateTime? = nil, emblemBackgroundPath: String? = nil, emblemColor: [String: Any]? = nil, emblemHash: Int? = nil, emblemPath: String? = nil, genderHash: Int? = nil, genderType: Int? = nil, levelProgression: [String: Any]? = nil, light: Int? = nil, membershipId: Int? = nil, membershipType: Int? = nil, minutesPlayedThisSession: Int? = nil, minutesPlayedTotal: Int? = nil, percentToNextLevel: Float? = nil, raceHash: Int? = nil, raceType: Int? = nil, stats: [String: Int]? = nil, titleRecordHash: Int? = nil) {
        self.baseCharacterLevel = baseCharacterLevel
        self.characterId = characterId
        self.classHash = classHash
        self.classType = classType
        self.dateLastPlayed = dateLastPlayed
        self.emblemBackgroundPath = emblemBackgroundPath
        self.emblemColor = emblemColor
        self.emblemHash = emblemHash
        self.emblemPath = emblemPath
        self.genderHash = genderHash
        self.genderType = genderType
        self.levelProgression = levelProgression
        self.light = light
        self.membershipId = membershipId
        self.membershipType = membershipType
        self.minutesPlayedThisSession = minutesPlayedThisSession
        self.minutesPlayedTotal = minutesPlayedTotal
        self.percentToNextLevel = percentToNextLevel
        self.raceHash = raceHash
        self.raceType = raceType
        self.stats = stats
        self.titleRecordHash = titleRecordHash
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        baseCharacterLevel = try container.decodeIfPresent("baseCharacterLevel")
        characterId = try container.decodeIfPresent("characterId")
        classHash = try container.decodeIfPresent("classHash")
        classType = try container.decodeIfPresent("classType")
        dateLastPlayed = try container.decodeIfPresent("dateLastPlayed")
        emblemBackgroundPath = try container.decodeIfPresent("emblemBackgroundPath")
        emblemColor = try container.decodeAnyIfPresent("emblemColor")
        emblemHash = try container.decodeIfPresent("emblemHash")
        emblemPath = try container.decodeIfPresent("emblemPath")
        genderHash = try container.decodeIfPresent("genderHash")
        genderType = try container.decodeIfPresent("genderType")
        levelProgression = try container.decodeAnyIfPresent("levelProgression")
        light = try container.decodeIfPresent("light")
        membershipId = try container.decodeIfPresent("membershipId")
        membershipType = try container.decodeIfPresent("membershipType")
        minutesPlayedThisSession = try container.decodeIfPresent("minutesPlayedThisSession")
        minutesPlayedTotal = try container.decodeIfPresent("minutesPlayedTotal")
        percentToNextLevel = try container.decodeIfPresent("percentToNextLevel")
        raceHash = try container.decodeIfPresent("raceHash")
        raceType = try container.decodeIfPresent("raceType")
        stats = try container.decodeIfPresent("stats")
        titleRecordHash = try container.decodeIfPresent("titleRecordHash")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(baseCharacterLevel, forKey: "baseCharacterLevel")
        try container.encodeIfPresent(characterId, forKey: "characterId")
        try container.encodeIfPresent(classHash, forKey: "classHash")
        try container.encodeIfPresent(classType, forKey: "classType")
        try container.encodeIfPresent(dateLastPlayed, forKey: "dateLastPlayed")
        try container.encodeIfPresent(emblemBackgroundPath, forKey: "emblemBackgroundPath")
        try container.encodeAnyIfPresent(emblemColor, forKey: "emblemColor")
        try container.encodeIfPresent(emblemHash, forKey: "emblemHash")
        try container.encodeIfPresent(emblemPath, forKey: "emblemPath")
        try container.encodeIfPresent(genderHash, forKey: "genderHash")
        try container.encodeIfPresent(genderType, forKey: "genderType")
        try container.encodeAnyIfPresent(levelProgression, forKey: "levelProgression")
        try container.encodeIfPresent(light, forKey: "light")
        try container.encodeIfPresent(membershipId, forKey: "membershipId")
        try container.encodeIfPresent(membershipType, forKey: "membershipType")
        try container.encodeIfPresent(minutesPlayedThisSession, forKey: "minutesPlayedThisSession")
        try container.encodeIfPresent(minutesPlayedTotal, forKey: "minutesPlayedTotal")
        try container.encodeIfPresent(percentToNextLevel, forKey: "percentToNextLevel")
        try container.encodeIfPresent(raceHash, forKey: "raceHash")
        try container.encodeIfPresent(raceType, forKey: "raceType")
        try container.encodeIfPresent(stats, forKey: "stats")
        try container.encodeIfPresent(titleRecordHash, forKey: "titleRecordHash")
    }

    public static func == (lhs: DestinyEntitiesCharactersDestinyCharacterComponent, rhs: DestinyEntitiesCharactersDestinyCharacterComponent) -> Bool {
        guard lhs.baseCharacterLevel == rhs.baseCharacterLevel else { return false }
        guard lhs.characterId == rhs.characterId else { return false }
        guard lhs.classHash == rhs.classHash else { return false }
        guard lhs.classType == rhs.classType else { return false }
        guard lhs.dateLastPlayed == rhs.dateLastPlayed else { return false }
        guard lhs.emblemBackgroundPath == rhs.emblemBackgroundPath else { return false }
        guard NSDictionary(dictionary: lhs.emblemColor ?? [:]).isEqual(to: rhs.emblemColor ?? [:]) else { return false }
        guard lhs.emblemHash == rhs.emblemHash else { return false }
        guard lhs.emblemPath == rhs.emblemPath else { return false }
        guard lhs.genderHash == rhs.genderHash else { return false }
        guard lhs.genderType == rhs.genderType else { return false }
        guard NSDictionary(dictionary: lhs.levelProgression ?? [:]).isEqual(to: rhs.levelProgression ?? [:]) else { return false }
        guard lhs.light == rhs.light else { return false }
        guard lhs.membershipId == rhs.membershipId else { return false }
        guard lhs.membershipType == rhs.membershipType else { return false }
        guard lhs.minutesPlayedThisSession == rhs.minutesPlayedThisSession else { return false }
        guard lhs.minutesPlayedTotal == rhs.minutesPlayedTotal else { return false }
        guard lhs.percentToNextLevel == rhs.percentToNextLevel else { return false }
        guard lhs.raceHash == rhs.raceHash else { return false }
        guard lhs.raceType == rhs.raceType else { return false }
        guard lhs.stats == rhs.stats else { return false }
        guard lhs.titleRecordHash == rhs.titleRecordHash else { return false }
        return true
    }
}