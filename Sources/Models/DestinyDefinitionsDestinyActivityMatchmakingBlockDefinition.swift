//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Information about matchmaking and party size for the activity. */
public struct DestinyDefinitionsDestinyActivityMatchmakingBlockDefinition: APIModel {

    /** If TRUE, the activity is matchmade. Otherwise, it requires explicit forming of a party. */
    public var isMatchmade: Bool?

    /** The maximum # of people allowed in a Fireteam. */
    public var maxParty: Int?

    /** The maximum # of people allowed across all teams in the activity. */
    public var maxPlayers: Int?

    /** The minimum # of people in the fireteam for the activity to launch. */
    public var minParty: Int?

    /** If true, you have to Solemnly Swear to be up to Nothing But Good(tm) to play. */
    public var requiresGuardianOath: Bool?

    public init(isMatchmade: Bool? = nil, maxParty: Int? = nil, maxPlayers: Int? = nil, minParty: Int? = nil, requiresGuardianOath: Bool? = nil) {
        self.isMatchmade = isMatchmade
        self.maxParty = maxParty
        self.maxPlayers = maxPlayers
        self.minParty = minParty
        self.requiresGuardianOath = requiresGuardianOath
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        isMatchmade = try container.decodeIfPresent("isMatchmade")
        maxParty = try container.decodeIfPresent("maxParty")
        maxPlayers = try container.decodeIfPresent("maxPlayers")
        minParty = try container.decodeIfPresent("minParty")
        requiresGuardianOath = try container.decodeIfPresent("requiresGuardianOath")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(isMatchmade, forKey: "isMatchmade")
        try container.encodeIfPresent(maxParty, forKey: "maxParty")
        try container.encodeIfPresent(maxPlayers, forKey: "maxPlayers")
        try container.encodeIfPresent(minParty, forKey: "minParty")
        try container.encodeIfPresent(requiresGuardianOath, forKey: "requiresGuardianOath")
    }

    public static func == (lhs: DestinyDefinitionsDestinyActivityMatchmakingBlockDefinition, rhs: DestinyDefinitionsDestinyActivityMatchmakingBlockDefinition) -> Bool {
        guard lhs.isMatchmade == rhs.isMatchmade else { return false }
        guard lhs.maxParty == rhs.maxParty else { return false }
        guard lhs.maxPlayers == rhs.maxPlayers else { return false }
        guard lhs.minParty == rhs.minParty else { return false }
        guard lhs.requiresGuardianOath == rhs.requiresGuardianOath else { return false }
        return true
    }
}
