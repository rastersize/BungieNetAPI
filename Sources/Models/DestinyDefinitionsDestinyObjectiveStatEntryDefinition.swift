//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Defines the conditions under which stat modifications will be applied to a Character while participating in an objective. */
public struct DestinyDefinitionsDestinyObjectiveStatEntryDefinition: APIModel {

    /** The stat being modified, and the value used. */
    public var stat: [String: Any]?

    /** Whether it will be applied as long as the objective is active, when it's completed, or until it's completed. */
    public var style: Int?

    public init(stat: [String: Any]? = nil, style: Int? = nil) {
        self.stat = stat
        self.style = style
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        stat = try container.decodeAnyIfPresent("stat")
        style = try container.decodeIfPresent("style")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeAnyIfPresent(stat, forKey: "stat")
        try container.encodeIfPresent(style, forKey: "style")
    }

    public static func == (lhs: DestinyDefinitionsDestinyObjectiveStatEntryDefinition, rhs: DestinyDefinitionsDestinyObjectiveStatEntryDefinition) -> Bool {
        guard NSDictionary(dictionary: lhs.stat ?? [:]).isEqual(to: rhs.stat ?? [:]) else { return false }
        guard lhs.style == rhs.style else { return false }
        return true
    }
}
