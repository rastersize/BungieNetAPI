//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** I know what you seek. You seek linked accounts. Found them, you have.
This contract returns a minimal amount of data about Destiny Accounts that are linked through your Bungie.Net account. We will not return accounts in this response whose */
public struct DestinyResponsesDestinyLinkedProfilesResponse: APIModel {

    /** If the requested membership had a linked Bungie.Net membership ID, this is the basic information about that BNet account.
I know, Tetron; I know this is mixing UserServices concerns with DestinyServices concerns. But it's so damn convenient! https://www.youtube.com/watch?v=X5R-bB-gKVI */
    public var bnetMembership: [String: Any]?

    /** Any Destiny account for whom we could successfully pull characters will be returned here, as the Platform-level summary of user data. (no character data, no Destiny account data other than the Membership ID and Type so you can make further queries) */
    public var profiles: [DestinyResponsesDestinyProfileUserInfoCard]?

    /** This is brief summary info for profiles that we believe have valid Destiny info, but who failed to return data for some other reason and thus we know that subsequent calls for their info will also fail. */
    public var profilesWithErrors: [DestinyResponsesDestinyErrorProfile]?

    public init(bnetMembership: [String: Any]? = nil, profiles: [DestinyResponsesDestinyProfileUserInfoCard]? = nil, profilesWithErrors: [DestinyResponsesDestinyErrorProfile]? = nil) {
        self.bnetMembership = bnetMembership
        self.profiles = profiles
        self.profilesWithErrors = profilesWithErrors
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        bnetMembership = try container.decodeAnyIfPresent("bnetMembership")
        profiles = try container.decodeArrayIfPresent("profiles")
        profilesWithErrors = try container.decodeArrayIfPresent("profilesWithErrors")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeAnyIfPresent(bnetMembership, forKey: "bnetMembership")
        try container.encodeIfPresent(profiles, forKey: "profiles")
        try container.encodeIfPresent(profilesWithErrors, forKey: "profilesWithErrors")
    }

    public static func == (lhs: DestinyResponsesDestinyLinkedProfilesResponse, rhs: DestinyResponsesDestinyLinkedProfilesResponse) -> Bool {
        guard NSDictionary(dictionary: lhs.bnetMembership ?? [:]).isEqual(to: rhs.bnetMembership ?? [:]) else { return false }
        guard lhs.profiles == rhs.profiles else { return false }
        guard lhs.profilesWithErrors == rhs.profilesWithErrors else { return false }
        return true
    }
}
