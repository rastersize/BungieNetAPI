//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Represents types of Energy that can be used for costs and payments related to Armor 2.0 mods. */
public struct DestinyDefinitionsEnergyTypesDestinyEnergyTypeDefinition: APIModel {

    /** If this Energy Type can be used for determining the Type of Energy that an item can consume, this is the hash for the DestinyInvestmentStatDefinition that represents the stat which holds the Capacity for that energy type. (Note that this is optional because "Any" is a valid cost, but not valid for Capacity - an Armor must have a specific Energy Type for determining the energy type that the Armor is restricted to use) */
    public var capacityStatHash: Int?

    /** If this Energy Type can be used as a cost to pay for socketing Armor 2.0 items, this is the hash for the DestinyInvestmentStatDefinition that stores the plug's raw cost. */
    public var costStatHash: Int?

    /** The description of the energy type, icon etc... */
    public var displayProperties: [String: Any]?

    /** We have an enumeration for Energy types for quick reference. This is the current definition's Energy type enum value. */
    public var enumValue: Int?

    /** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
    public var hash: Int?

    /** The index of the entity as it was found in the investment tables. */
    public var index: Int?

    /** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
    public var redacted: Bool?

    /** If TRUE, the game shows this Energy type's icon. Otherwise, it doesn't. Whether you show it or not is up to you. */
    public var showIcon: Bool?

    /** A variant of the icon that is transparent and colorless. */
    public var transparentIconPath: String?

    public init(capacityStatHash: Int? = nil, costStatHash: Int? = nil, displayProperties: [String: Any]? = nil, enumValue: Int? = nil, hash: Int? = nil, index: Int? = nil, redacted: Bool? = nil, showIcon: Bool? = nil, transparentIconPath: String? = nil) {
        self.capacityStatHash = capacityStatHash
        self.costStatHash = costStatHash
        self.displayProperties = displayProperties
        self.enumValue = enumValue
        self.hash = hash
        self.index = index
        self.redacted = redacted
        self.showIcon = showIcon
        self.transparentIconPath = transparentIconPath
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        capacityStatHash = try container.decodeIfPresent("capacityStatHash")
        costStatHash = try container.decodeIfPresent("costStatHash")
        displayProperties = try container.decodeAnyIfPresent("displayProperties")
        enumValue = try container.decodeIfPresent("enumValue")
        hash = try container.decodeIfPresent("hash")
        index = try container.decodeIfPresent("index")
        redacted = try container.decodeIfPresent("redacted")
        showIcon = try container.decodeIfPresent("showIcon")
        transparentIconPath = try container.decodeIfPresent("transparentIconPath")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(capacityStatHash, forKey: "capacityStatHash")
        try container.encodeIfPresent(costStatHash, forKey: "costStatHash")
        try container.encodeAnyIfPresent(displayProperties, forKey: "displayProperties")
        try container.encodeIfPresent(enumValue, forKey: "enumValue")
        try container.encodeIfPresent(hash, forKey: "hash")
        try container.encodeIfPresent(index, forKey: "index")
        try container.encodeIfPresent(redacted, forKey: "redacted")
        try container.encodeIfPresent(showIcon, forKey: "showIcon")
        try container.encodeIfPresent(transparentIconPath, forKey: "transparentIconPath")
    }

    public static func == (lhs: DestinyDefinitionsEnergyTypesDestinyEnergyTypeDefinition, rhs: DestinyDefinitionsEnergyTypesDestinyEnergyTypeDefinition) -> Bool {
        guard lhs.capacityStatHash == rhs.capacityStatHash else { return false }
        guard lhs.costStatHash == rhs.costStatHash else { return false }
        guard NSDictionary(dictionary: lhs.displayProperties ?? [:]).isEqual(to: rhs.displayProperties ?? [:]) else { return false }
        guard lhs.enumValue == rhs.enumValue else { return false }
        guard lhs.hash == rhs.hash else { return false }
        guard lhs.index == rhs.index else { return false }
        guard lhs.redacted == rhs.redacted else { return false }
        guard lhs.showIcon == rhs.showIcon else { return false }
        guard lhs.transparentIconPath == rhs.transparentIconPath else { return false }
        return true
    }
}
