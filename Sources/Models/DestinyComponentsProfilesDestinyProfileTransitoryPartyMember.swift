//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** This is some bare minimum information about a party member in a Fireteam. Unfortunately, without great computational expense on our side we can only get at the data contained here. I'd like to give you a character ID for example, but we don't have it. But we do have these three pieces of information. May they help you on your quest to show meaningful data about current Fireteams.
Notably, we don't and can't feasibly return info on characters. If you can, try to use just the data below for your UI and purposes. Only hit us with further queries if you absolutely must know the character ID of the currently playing character. Pretty please with sugar on top. */
public struct DestinyComponentsProfilesDestinyProfileTransitoryPartyMember: APIModel {

    /** The player's last known display name. */
    public var displayName: String?

    /** The identifier for the DestinyInventoryItemDefinition of the player's emblem. */
    public var emblemHash: Int?

    /** The Membership ID that matches the party member. */
    public var membershipId: Int?

    /** A Flags Enumeration value indicating the states that the player is in relevant to being on a fireteam. */
    public var status: Int?

    public init(displayName: String? = nil, emblemHash: Int? = nil, membershipId: Int? = nil, status: Int? = nil) {
        self.displayName = displayName
        self.emblemHash = emblemHash
        self.membershipId = membershipId
        self.status = status
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        displayName = try container.decodeIfPresent("displayName")
        emblemHash = try container.decodeIfPresent("emblemHash")
        membershipId = try container.decodeIfPresent("membershipId")
        status = try container.decodeIfPresent("status")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(displayName, forKey: "displayName")
        try container.encodeIfPresent(emblemHash, forKey: "emblemHash")
        try container.encodeIfPresent(membershipId, forKey: "membershipId")
        try container.encodeIfPresent(status, forKey: "status")
    }

    public static func == (lhs: DestinyComponentsProfilesDestinyProfileTransitoryPartyMember, rhs: DestinyComponentsProfilesDestinyProfileTransitoryPartyMember) -> Bool {
        guard lhs.displayName == rhs.displayName else { return false }
        guard lhs.emblemHash == rhs.emblemHash else { return false }
        guard lhs.membershipId == rhs.membershipId else { return false }
        guard lhs.status == rhs.status else { return false }
        return true
    }
}
