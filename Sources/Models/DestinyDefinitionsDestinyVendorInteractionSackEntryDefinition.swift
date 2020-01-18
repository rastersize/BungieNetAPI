//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Compare this sackType to the sack identifier in the DestinyInventoryItemDefinition.vendorSackType property of items. If they match, show this sack with this interaction. */
public struct DestinyDefinitionsDestinyVendorInteractionSackEntryDefinition: APIModel {

    public var sackType: Int?

    public init(sackType: Int? = nil) {
        self.sackType = sackType
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        sackType = try container.decodeIfPresent("sackType")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(sackType, forKey: "sackType")
    }

    public static func == (lhs: DestinyDefinitionsDestinyVendorInteractionSackEntryDefinition, rhs: DestinyDefinitionsDestinyVendorInteractionSackEntryDefinition) -> Bool {
        guard lhs.sackType == rhs.sackType else { return false }
        return true
    }
}
