//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyHistoricalStatsDestinyPlayer: APIModel {

    /** Details about the player as they are known on BungieNet. This will be undefined if the player has marked their credential private, or does not have a BungieNet account. */
    public var bungieNetUserInfo: [String: Any]?

    /** Class of the character if applicable and available. */
    public var characterClass: String?

    /** Level of the character if available. Zero if it is not available. */
    public var characterLevel: Int?

    /** Current clan name for the player. This value may be null or an empty string if the user does not have a clan. */
    public var clanName: String?

    /** Current clan tag for the player. This value may be null or an empty string if the user does not have a clan. */
    public var clanTag: String?

    public var classHash: Int?

    /** Details about the player as they are known in game (platform display name, Destiny emblem) */
    public var destinyUserInfo: [String: Any]?

    /** If we know the emblem's hash, this can be used to look up the player's emblem at the time of a match when receiving PGCR data, or otherwise their currently equipped emblem (if we are able to obtain it). */
    public var emblemHash: Int?

    public var genderHash: Int?

    /** Light Level of the character if available. Zero if it is not available. */
    public var lightLevel: Int?

    public var raceHash: Int?

    public init(bungieNetUserInfo: [String: Any]? = nil, characterClass: String? = nil, characterLevel: Int? = nil, clanName: String? = nil, clanTag: String? = nil, classHash: Int? = nil, destinyUserInfo: [String: Any]? = nil, emblemHash: Int? = nil, genderHash: Int? = nil, lightLevel: Int? = nil, raceHash: Int? = nil) {
        self.bungieNetUserInfo = bungieNetUserInfo
        self.characterClass = characterClass
        self.characterLevel = characterLevel
        self.clanName = clanName
        self.clanTag = clanTag
        self.classHash = classHash
        self.destinyUserInfo = destinyUserInfo
        self.emblemHash = emblemHash
        self.genderHash = genderHash
        self.lightLevel = lightLevel
        self.raceHash = raceHash
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        bungieNetUserInfo = try container.decodeAnyIfPresent("bungieNetUserInfo")
        characterClass = try container.decodeIfPresent("characterClass")
        characterLevel = try container.decodeIfPresent("characterLevel")
        clanName = try container.decodeIfPresent("clanName")
        clanTag = try container.decodeIfPresent("clanTag")
        classHash = try container.decodeIfPresent("classHash")
        destinyUserInfo = try container.decodeAnyIfPresent("destinyUserInfo")
        emblemHash = try container.decodeIfPresent("emblemHash")
        genderHash = try container.decodeIfPresent("genderHash")
        lightLevel = try container.decodeIfPresent("lightLevel")
        raceHash = try container.decodeIfPresent("raceHash")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeAnyIfPresent(bungieNetUserInfo, forKey: "bungieNetUserInfo")
        try container.encodeIfPresent(characterClass, forKey: "characterClass")
        try container.encodeIfPresent(characterLevel, forKey: "characterLevel")
        try container.encodeIfPresent(clanName, forKey: "clanName")
        try container.encodeIfPresent(clanTag, forKey: "clanTag")
        try container.encodeIfPresent(classHash, forKey: "classHash")
        try container.encodeAnyIfPresent(destinyUserInfo, forKey: "destinyUserInfo")
        try container.encodeIfPresent(emblemHash, forKey: "emblemHash")
        try container.encodeIfPresent(genderHash, forKey: "genderHash")
        try container.encodeIfPresent(lightLevel, forKey: "lightLevel")
        try container.encodeIfPresent(raceHash, forKey: "raceHash")
    }

    public static func == (lhs: DestinyHistoricalStatsDestinyPlayer, rhs: DestinyHistoricalStatsDestinyPlayer) -> Bool {
        guard NSDictionary(dictionary: lhs.bungieNetUserInfo ?? [:]).isEqual(to: rhs.bungieNetUserInfo ?? [:]) else { return false }
        guard lhs.characterClass == rhs.characterClass else { return false }
        guard lhs.characterLevel == rhs.characterLevel else { return false }
        guard lhs.clanName == rhs.clanName else { return false }
        guard lhs.clanTag == rhs.clanTag else { return false }
        guard lhs.classHash == rhs.classHash else { return false }
        guard NSDictionary(dictionary: lhs.destinyUserInfo ?? [:]).isEqual(to: rhs.destinyUserInfo ?? [:]) else { return false }
        guard lhs.emblemHash == rhs.emblemHash else { return false }
        guard lhs.genderHash == rhs.genderHash else { return false }
        guard lhs.lightLevel == rhs.lightLevel else { return false }
        guard lhs.raceHash == rhs.raceHash else { return false }
        return true
    }
}
