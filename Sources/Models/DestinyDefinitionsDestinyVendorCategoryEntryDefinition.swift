//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** This is the definition for a single Vendor Category, into which Sale Items are grouped. */
public struct DestinyDefinitionsDestinyVendorCategoryEntryDefinition: APIModel {

    /** The localized string for making purchases from this category, if it is different from the vendor's string for purchasing. */
    public var buyStringOverride: String?

    /** The hashed identifier for the category. */
    public var categoryHash: Int?

    /** The index of the category in the original category definitions for the vendor. */
    public var categoryIndex: Int?

    /** If the category is disabled, this is the localized description to show. */
    public var disabledDescription: String?

    /** The localized title of the category. */
    public var displayTitle: String?

    /** True if this category doesn't allow purchases. */
    public var hideFromRegularPurchase: Bool?

    /** If you don't have the currency required to buy items from this category, should the items be hidden? */
    public var hideIfNoCurrency: Bool?

    /** If true, this category only displays items: you can't purchase anything in them. */
    public var isDisplayOnly: Bool?

    /** Sometimes a category isn't actually used to sell items, but rather to preview them. This implies different UI (and manual placement of the category in the UI) in the game, and special treatment. */
    public var isPreview: Bool?

    /** If this category has an overlay prompt that should appear, this contains the details of that prompt. */
    public var overlay: [String: Any]?

    /** The amount of items that will be available when this category is shown. */
    public var quantityAvailable: Int?

    public var resetIntervalMinutesOverride: Int?

    public var resetOffsetMinutesOverride: Int?

    /** If items aren't up for sale in this category, should we still show them (greyed out)? */
    public var showUnavailableItems: Bool?

    /** Used in sorting items in vendors... but there's a lot more to it. Just go with the order provided in the itemIndexes property on the DestinyVendorCategoryComponent instead, it should be more reliable than trying to recalculate it yourself. */
    public var sortValue: Int?

    /** A shortcut for the vendor item indexes sold under this category. Saves us from some expensive reorganization at runtime. */
    public var vendorItemIndexes: [Int]?

    public init(buyStringOverride: String? = nil, categoryHash: Int? = nil, categoryIndex: Int? = nil, disabledDescription: String? = nil, displayTitle: String? = nil, hideFromRegularPurchase: Bool? = nil, hideIfNoCurrency: Bool? = nil, isDisplayOnly: Bool? = nil, isPreview: Bool? = nil, overlay: [String: Any]? = nil, quantityAvailable: Int? = nil, resetIntervalMinutesOverride: Int? = nil, resetOffsetMinutesOverride: Int? = nil, showUnavailableItems: Bool? = nil, sortValue: Int? = nil, vendorItemIndexes: [Int]? = nil) {
        self.buyStringOverride = buyStringOverride
        self.categoryHash = categoryHash
        self.categoryIndex = categoryIndex
        self.disabledDescription = disabledDescription
        self.displayTitle = displayTitle
        self.hideFromRegularPurchase = hideFromRegularPurchase
        self.hideIfNoCurrency = hideIfNoCurrency
        self.isDisplayOnly = isDisplayOnly
        self.isPreview = isPreview
        self.overlay = overlay
        self.quantityAvailable = quantityAvailable
        self.resetIntervalMinutesOverride = resetIntervalMinutesOverride
        self.resetOffsetMinutesOverride = resetOffsetMinutesOverride
        self.showUnavailableItems = showUnavailableItems
        self.sortValue = sortValue
        self.vendorItemIndexes = vendorItemIndexes
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        buyStringOverride = try container.decodeIfPresent("buyStringOverride")
        categoryHash = try container.decodeIfPresent("categoryHash")
        categoryIndex = try container.decodeIfPresent("categoryIndex")
        disabledDescription = try container.decodeIfPresent("disabledDescription")
        displayTitle = try container.decodeIfPresent("displayTitle")
        hideFromRegularPurchase = try container.decodeIfPresent("hideFromRegularPurchase")
        hideIfNoCurrency = try container.decodeIfPresent("hideIfNoCurrency")
        isDisplayOnly = try container.decodeIfPresent("isDisplayOnly")
        isPreview = try container.decodeIfPresent("isPreview")
        overlay = try container.decodeAnyIfPresent("overlay")
        quantityAvailable = try container.decodeIfPresent("quantityAvailable")
        resetIntervalMinutesOverride = try container.decodeIfPresent("resetIntervalMinutesOverride")
        resetOffsetMinutesOverride = try container.decodeIfPresent("resetOffsetMinutesOverride")
        showUnavailableItems = try container.decodeIfPresent("showUnavailableItems")
        sortValue = try container.decodeIfPresent("sortValue")
        vendorItemIndexes = try container.decodeArrayIfPresent("vendorItemIndexes")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(buyStringOverride, forKey: "buyStringOverride")
        try container.encodeIfPresent(categoryHash, forKey: "categoryHash")
        try container.encodeIfPresent(categoryIndex, forKey: "categoryIndex")
        try container.encodeIfPresent(disabledDescription, forKey: "disabledDescription")
        try container.encodeIfPresent(displayTitle, forKey: "displayTitle")
        try container.encodeIfPresent(hideFromRegularPurchase, forKey: "hideFromRegularPurchase")
        try container.encodeIfPresent(hideIfNoCurrency, forKey: "hideIfNoCurrency")
        try container.encodeIfPresent(isDisplayOnly, forKey: "isDisplayOnly")
        try container.encodeIfPresent(isPreview, forKey: "isPreview")
        try container.encodeAnyIfPresent(overlay, forKey: "overlay")
        try container.encodeIfPresent(quantityAvailable, forKey: "quantityAvailable")
        try container.encodeIfPresent(resetIntervalMinutesOverride, forKey: "resetIntervalMinutesOverride")
        try container.encodeIfPresent(resetOffsetMinutesOverride, forKey: "resetOffsetMinutesOverride")
        try container.encodeIfPresent(showUnavailableItems, forKey: "showUnavailableItems")
        try container.encodeIfPresent(sortValue, forKey: "sortValue")
        try container.encodeIfPresent(vendorItemIndexes, forKey: "vendorItemIndexes")
    }

    public static func == (lhs: DestinyDefinitionsDestinyVendorCategoryEntryDefinition, rhs: DestinyDefinitionsDestinyVendorCategoryEntryDefinition) -> Bool {
        guard lhs.buyStringOverride == rhs.buyStringOverride else { return false }
        guard lhs.categoryHash == rhs.categoryHash else { return false }
        guard lhs.categoryIndex == rhs.categoryIndex else { return false }
        guard lhs.disabledDescription == rhs.disabledDescription else { return false }
        guard lhs.displayTitle == rhs.displayTitle else { return false }
        guard lhs.hideFromRegularPurchase == rhs.hideFromRegularPurchase else { return false }
        guard lhs.hideIfNoCurrency == rhs.hideIfNoCurrency else { return false }
        guard lhs.isDisplayOnly == rhs.isDisplayOnly else { return false }
        guard lhs.isPreview == rhs.isPreview else { return false }
        guard NSDictionary(dictionary: lhs.overlay ?? [:]).isEqual(to: rhs.overlay ?? [:]) else { return false }
        guard lhs.quantityAvailable == rhs.quantityAvailable else { return false }
        guard lhs.resetIntervalMinutesOverride == rhs.resetIntervalMinutesOverride else { return false }
        guard lhs.resetOffsetMinutesOverride == rhs.resetOffsetMinutesOverride else { return false }
        guard lhs.showUnavailableItems == rhs.showUnavailableItems else { return false }
        guard lhs.sortValue == rhs.sortValue else { return false }
        guard lhs.vendorItemIndexes == rhs.vendorItemIndexes else { return false }
        return true
    }
}
