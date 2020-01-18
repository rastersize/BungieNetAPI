//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The most essential summary information about a Profile (in Destiny 1, we called these "Accounts"). */
public struct DestinyEntitiesProfilesDestinyProfileComponent: APIModel {

    /** A list of the character IDs, for further querying on your part. */
    public var characterIds: [Int]?

    /** The last time the user played with any character on this Profile. */
    public var dateLastPlayed: DateTime?

    /** A list of seasons that this profile owns. Unlike versionsOwned, these stay with the profile across Platforms, and thus will be valid. */
    public var seasonHashes: [Int]?

    /** If you need to render the Profile (their platform name, icon, etc...) somewhere, this property contains that information. */
    public var userInfo: [String: Any]?

    /** If you want to know what expansions they own, this will contain that data.
 IMPORTANT: This field may not return the data you're interested in for Cross-Saved users. It returns the last ownership data we saw for this account - which is to say, what they've purchased on the platform on which they last played, which now could be a different platform.
 If you don't care about per-platform ownership and only care about whatever platform it seems they are playing on most recently, then this should be "good enough." Otherwise, this should be considered deprecated. We do not have a good alternative to provide at this time with platform specific ownership data for DLC. */
    public var versionsOwned: Int?

    public init(characterIds: [Int]? = nil, dateLastPlayed: DateTime? = nil, seasonHashes: [Int]? = nil, userInfo: [String: Any]? = nil, versionsOwned: Int? = nil) {
        self.characterIds = characterIds
        self.dateLastPlayed = dateLastPlayed
        self.seasonHashes = seasonHashes
        self.userInfo = userInfo
        self.versionsOwned = versionsOwned
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        characterIds = try container.decodeArrayIfPresent("characterIds")
        dateLastPlayed = try container.decodeIfPresent("dateLastPlayed")
        seasonHashes = try container.decodeArrayIfPresent("seasonHashes")
        userInfo = try container.decodeAnyIfPresent("userInfo")
        versionsOwned = try container.decodeIfPresent("versionsOwned")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(characterIds, forKey: "characterIds")
        try container.encodeIfPresent(dateLastPlayed, forKey: "dateLastPlayed")
        try container.encodeIfPresent(seasonHashes, forKey: "seasonHashes")
        try container.encodeAnyIfPresent(userInfo, forKey: "userInfo")
        try container.encodeIfPresent(versionsOwned, forKey: "versionsOwned")
    }

    public static func == (lhs: DestinyEntitiesProfilesDestinyProfileComponent, rhs: DestinyEntitiesProfilesDestinyProfileComponent) -> Bool {
        guard lhs.characterIds == rhs.characterIds else { return false }
        guard lhs.dateLastPlayed == rhs.dateLastPlayed else { return false }
        guard lhs.seasonHashes == rhs.seasonHashes else { return false }
        guard NSDictionary(dictionary: lhs.userInfo ?? [:]).isEqual(to: rhs.userInfo ?? [:]) else { return false }
        guard lhs.versionsOwned == rhs.versionsOwned else { return false }
        return true
    }
}
