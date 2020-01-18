//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Some basic information about whether you can be joined, how many slots are left etc. Note that this can change quickly, so it may not actually be useful. But perhaps it will be in some use cases? */
public struct DestinyComponentsProfilesDestinyProfileTransitoryJoinability: APIModel {

    /** Reasons why a person can't join this person's fireteam. */
    public var closedReasons: Int?

    /** The number of slots still available on this person's fireteam. */
    public var openSlots: Int?

    /** Who the person is currently allowing invites from. */
    public var privacySetting: Int?

    public init(closedReasons: Int? = nil, openSlots: Int? = nil, privacySetting: Int? = nil) {
        self.closedReasons = closedReasons
        self.openSlots = openSlots
        self.privacySetting = privacySetting
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        closedReasons = try container.decodeIfPresent("closedReasons")
        openSlots = try container.decodeIfPresent("openSlots")
        privacySetting = try container.decodeIfPresent("privacySetting")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(closedReasons, forKey: "closedReasons")
        try container.encodeIfPresent(openSlots, forKey: "openSlots")
        try container.encodeIfPresent(privacySetting, forKey: "privacySetting")
    }

    public static func == (lhs: DestinyComponentsProfilesDestinyProfileTransitoryJoinability, rhs: DestinyComponentsProfilesDestinyProfileTransitoryJoinability) -> Bool {
        guard lhs.closedReasons == rhs.closedReasons else { return false }
        guard lhs.openSlots == rhs.openSlots else { return false }
        guard lhs.privacySetting == rhs.privacySetting else { return false }
        return true
    }
}
