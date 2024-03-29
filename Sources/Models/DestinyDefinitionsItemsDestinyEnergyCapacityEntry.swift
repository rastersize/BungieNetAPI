//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Items can have Energy Capacity, and plugs can provide that capacity such as on a piece of Armor in Armor 2.0. This is how much "Energy" can be spent on activating plugs for this item. */
public struct DestinyDefinitionsItemsDestinyEnergyCapacityEntry: APIModel {

    /** How much energy capacity this plug provides. */
    public var capacityValue: Int?

    /** The Energy Type for this energy capacity, in enum form for easy use. */
    public var energyType: Int?

    /** Energy provided by a plug is always of a specific type - this is the hash identifier for the energy type for which it provides Capacity. */
    public var energyTypeHash: Int?

    public init(capacityValue: Int? = nil, energyType: Int? = nil, energyTypeHash: Int? = nil) {
        self.capacityValue = capacityValue
        self.energyType = energyType
        self.energyTypeHash = energyTypeHash
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        capacityValue = try container.decodeIfPresent("capacityValue")
        energyType = try container.decodeIfPresent("energyType")
        energyTypeHash = try container.decodeIfPresent("energyTypeHash")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(capacityValue, forKey: "capacityValue")
        try container.encodeIfPresent(energyType, forKey: "energyType")
        try container.encodeIfPresent(energyTypeHash, forKey: "energyTypeHash")
    }

    public static func == (lhs: DestinyDefinitionsItemsDestinyEnergyCapacityEntry, rhs: DestinyDefinitionsItemsDestinyEnergyCapacityEntry) -> Bool {
        guard lhs.capacityValue == rhs.capacityValue else { return false }
        guard lhs.energyType == rhs.energyType else { return false }
        guard lhs.energyTypeHash == rhs.energyTypeHash else { return false }
        return true
    }
}
