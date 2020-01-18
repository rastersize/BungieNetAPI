//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Sockets may refer to a "Plug Set": a set of reusable plugs that may be shared across multiple sockets (or even, in theory, multiple sockets over multiple items).
This is the set of those plugs that we came across in the users' inventory, along with the values for plugs in the set. Any given set in this component may be represented in Character and Profile-level, as some plugs may be Profile-level restricted, and some character-level restricted. (note that the ones that are even more specific will remain on the actual socket component itself, as they cannot be reused) */
public struct DestinyComponentsPlugSetsDestinyPlugSetsComponent: APIModel {

    /** The shared list of plugs for each relevant PlugSet, keyed by the hash identifier of the PlugSet (DestinyPlugSetDefinition). */
    public var plugs: [String: [DestinySocketsDestinyItemPlug]]?

    public init(plugs: [String: [DestinySocketsDestinyItemPlug]]? = nil) {
        self.plugs = plugs
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        plugs = try container.decodeIfPresent("plugs")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(plugs, forKey: "plugs")
    }

    public static func == (lhs: DestinyComponentsPlugSetsDestinyPlugSetsComponent, rhs: DestinyComponentsPlugSetsDestinyPlugSetsComponent) -> Bool {
        guard lhs.plugs == rhs.plugs else { return false }
        return true
    }
}
