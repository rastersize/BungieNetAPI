//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** An intrinsic perk on an item, and the requirements for it to be activated. */
public struct DestinyDefinitionsDestinyItemPerkEntryDefinition: APIModel {

    /** A hash identifier for the DestinySandboxPerkDefinition being provided on the item. */
    public var perkHash: Int?

    /** Indicates whether this perk should be shown, or if it should be shown disabled. */
    public var perkVisibility: Int?

    /** If this perk is not active, this is the string to show for why it's not providing its benefits. */
    public var requirementDisplayString: String?

    public init(perkHash: Int? = nil, perkVisibility: Int? = nil, requirementDisplayString: String? = nil) {
        self.perkHash = perkHash
        self.perkVisibility = perkVisibility
        self.requirementDisplayString = requirementDisplayString
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        perkHash = try container.decodeIfPresent("perkHash")
        perkVisibility = try container.decodeIfPresent("perkVisibility")
        requirementDisplayString = try container.decodeIfPresent("requirementDisplayString")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(perkHash, forKey: "perkHash")
        try container.encodeIfPresent(perkVisibility, forKey: "perkVisibility")
        try container.encodeIfPresent(requirementDisplayString, forKey: "requirementDisplayString")
    }

    public static func == (lhs: DestinyDefinitionsDestinyItemPerkEntryDefinition, rhs: DestinyDefinitionsDestinyItemPerkEntryDefinition) -> Bool {
        guard lhs.perkHash == rhs.perkHash else { return false }
        guard lhs.perkVisibility == rhs.perkVisibility else { return false }
        guard lhs.requirementDisplayString == rhs.requirementDisplayString else { return false }
        return true
    }
}
