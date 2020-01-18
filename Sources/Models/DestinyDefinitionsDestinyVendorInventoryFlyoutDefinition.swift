//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The definition for an "inventory flyout": a UI screen where we show you part of an otherwise hidden vendor inventory: like the Vault inventory buckets. */
public struct DestinyDefinitionsDestinyVendorInventoryFlyoutDefinition: APIModel {

    /** A list of inventory buckets and other metadata to show on the screen. */
    public var buckets: [DestinyDefinitionsDestinyVendorInventoryFlyoutBucketDefinition]?

    /** The title and other common properties of the flyout. */
    public var displayProperties: [String: Any]?

    /** If this flyout is meant to show you the contents of the player's equipment slot, this is the slot to show. */
    public var equipmentSlotHash: Int?

    /** An identifier for the flyout, in case anything else needs to refer to them. */
    public var flyoutId: Int?

    /** If the flyout is locked, this is the reason why. */
    public var lockedDescription: String?

    /** If this is true, don't show any of the glistening "this is a new item" UI elements, like we show on the inventory items themselves in in-game UI. */
    public var suppressNewness: Bool?

    public init(buckets: [DestinyDefinitionsDestinyVendorInventoryFlyoutBucketDefinition]? = nil, displayProperties: [String: Any]? = nil, equipmentSlotHash: Int? = nil, flyoutId: Int? = nil, lockedDescription: String? = nil, suppressNewness: Bool? = nil) {
        self.buckets = buckets
        self.displayProperties = displayProperties
        self.equipmentSlotHash = equipmentSlotHash
        self.flyoutId = flyoutId
        self.lockedDescription = lockedDescription
        self.suppressNewness = suppressNewness
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        buckets = try container.decodeArrayIfPresent("buckets")
        displayProperties = try container.decodeAnyIfPresent("displayProperties")
        equipmentSlotHash = try container.decodeIfPresent("equipmentSlotHash")
        flyoutId = try container.decodeIfPresent("flyoutId")
        lockedDescription = try container.decodeIfPresent("lockedDescription")
        suppressNewness = try container.decodeIfPresent("suppressNewness")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(buckets, forKey: "buckets")
        try container.encodeAnyIfPresent(displayProperties, forKey: "displayProperties")
        try container.encodeIfPresent(equipmentSlotHash, forKey: "equipmentSlotHash")
        try container.encodeIfPresent(flyoutId, forKey: "flyoutId")
        try container.encodeIfPresent(lockedDescription, forKey: "lockedDescription")
        try container.encodeIfPresent(suppressNewness, forKey: "suppressNewness")
    }

    public static func == (lhs: DestinyDefinitionsDestinyVendorInventoryFlyoutDefinition, rhs: DestinyDefinitionsDestinyVendorInventoryFlyoutDefinition) -> Bool {
        guard lhs.buckets == rhs.buckets else { return false }
        guard NSDictionary(dictionary: lhs.displayProperties ?? [:]).isEqual(to: rhs.displayProperties ?? [:]) else { return false }
        guard lhs.equipmentSlotHash == rhs.equipmentSlotHash else { return false }
        guard lhs.flyoutId == rhs.flyoutId else { return false }
        guard lhs.lockedDescription == rhs.lockedDescription else { return false }
        guard lhs.suppressNewness == rhs.suppressNewness else { return false }
        return true
    }
}
