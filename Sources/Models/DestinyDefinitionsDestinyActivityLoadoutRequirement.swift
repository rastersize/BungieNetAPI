//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyDefinitionsDestinyActivityLoadoutRequirement: APIModel {

    public var allowedEquippedItemHashes: [Int]?

    public var allowedWeaponSubTypes: [Int]?

    public var equipmentSlotHash: Int?

    public init(allowedEquippedItemHashes: [Int]? = nil, allowedWeaponSubTypes: [Int]? = nil, equipmentSlotHash: Int? = nil) {
        self.allowedEquippedItemHashes = allowedEquippedItemHashes
        self.allowedWeaponSubTypes = allowedWeaponSubTypes
        self.equipmentSlotHash = equipmentSlotHash
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        allowedEquippedItemHashes = try container.decodeArrayIfPresent("allowedEquippedItemHashes")
        allowedWeaponSubTypes = try container.decodeArrayIfPresent("allowedWeaponSubTypes")
        equipmentSlotHash = try container.decodeIfPresent("equipmentSlotHash")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(allowedEquippedItemHashes, forKey: "allowedEquippedItemHashes")
        try container.encodeIfPresent(allowedWeaponSubTypes, forKey: "allowedWeaponSubTypes")
        try container.encodeIfPresent(equipmentSlotHash, forKey: "equipmentSlotHash")
    }

    public static func == (lhs: DestinyDefinitionsDestinyActivityLoadoutRequirement, rhs: DestinyDefinitionsDestinyActivityLoadoutRequirement) -> Bool {
        guard lhs.allowedEquippedItemHashes == rhs.allowedEquippedItemHashes else { return false }
        guard lhs.allowedWeaponSubTypes == rhs.allowedWeaponSubTypes else { return false }
        guard lhs.equipmentSlotHash == rhs.equipmentSlotHash else { return false }
        return true
    }
}
