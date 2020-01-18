//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** This component contains essential/summary information about the vendor. */
public struct DestinyEntitiesVendorsDestinyVendorComponent: APIModel {

    /** If True, you can purchase from the Vendor.
Theoretically, Vendors can be restricted from selling items. In practice, none do that (yet?). */
    public var canPurchase: Bool?

    /** If True, the Vendor is currently accessible. 
If False, they may not actually be visible in the world at the moment. */
    public var enabled: Bool?

    /** The date when this vendor's inventory will next rotate/refresh.
Note that this is distinct from the date ranges that the vendor is visible/available in-game: this field indicates the specific time when the vendor's available items refresh and rotate, regardless of whether the vendor is actually available at that time. Unfortunately, these two values may be (and are, for the case of important vendors like Xur) different.
Issue https://github.com/Bungie-net/api/issues/353 is tracking a fix to start providing visibility date ranges where possible in addition to this refresh date, so that all important dates for vendors are available for use. */
    public var nextRefreshDate: DateTime?

    /** If the Vendor has a related Reputation, this is the Progression data that represents the character's Reputation level with this Vendor. */
    public var progression: [String: Any]?

    /** If this vendor has a seasonal rank, this will be the calculated value of that rank. How nice is that? I mean, that's pretty sweeet. It's a whole 32 bit integer. */
    public var seasonalRank: Int?

    /** The unique identifier for the vendor. Use it to look up their DestinyVendorDefinition. */
    public var vendorHash: Int?

    /** An index into the vendor definition's "locations" property array, indicating which location they are at currently. If -1, then the vendor has no known location (and you may choose not to show them in your UI as a result. I mean, it's your bag honey) */
    public var vendorLocationIndex: Int?

    public init(canPurchase: Bool? = nil, enabled: Bool? = nil, nextRefreshDate: DateTime? = nil, progression: [String: Any]? = nil, seasonalRank: Int? = nil, vendorHash: Int? = nil, vendorLocationIndex: Int? = nil) {
        self.canPurchase = canPurchase
        self.enabled = enabled
        self.nextRefreshDate = nextRefreshDate
        self.progression = progression
        self.seasonalRank = seasonalRank
        self.vendorHash = vendorHash
        self.vendorLocationIndex = vendorLocationIndex
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        canPurchase = try container.decodeIfPresent("canPurchase")
        enabled = try container.decodeIfPresent("enabled")
        nextRefreshDate = try container.decodeIfPresent("nextRefreshDate")
        progression = try container.decodeAnyIfPresent("progression")
        seasonalRank = try container.decodeIfPresent("seasonalRank")
        vendorHash = try container.decodeIfPresent("vendorHash")
        vendorLocationIndex = try container.decodeIfPresent("vendorLocationIndex")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(canPurchase, forKey: "canPurchase")
        try container.encodeIfPresent(enabled, forKey: "enabled")
        try container.encodeIfPresent(nextRefreshDate, forKey: "nextRefreshDate")
        try container.encodeAnyIfPresent(progression, forKey: "progression")
        try container.encodeIfPresent(seasonalRank, forKey: "seasonalRank")
        try container.encodeIfPresent(vendorHash, forKey: "vendorHash")
        try container.encodeIfPresent(vendorLocationIndex, forKey: "vendorLocationIndex")
    }

    public static func == (lhs: DestinyEntitiesVendorsDestinyVendorComponent, rhs: DestinyEntitiesVendorsDestinyVendorComponent) -> Bool {
        guard lhs.canPurchase == rhs.canPurchase else { return false }
        guard lhs.enabled == rhs.enabled else { return false }
        guard lhs.nextRefreshDate == rhs.nextRefreshDate else { return false }
        guard NSDictionary(dictionary: lhs.progression ?? [:]).isEqual(to: rhs.progression ?? [:]) else { return false }
        guard lhs.seasonalRank == rhs.seasonalRank else { return false }
        guard lhs.vendorHash == rhs.vendorHash else { return false }
        guard lhs.vendorLocationIndex == rhs.vendorLocationIndex else { return false }
        return true
    }
}