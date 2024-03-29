//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** A shortcut for the fact that some items have a "Preview Vendor" - See DestinyInventoryItemDefinition.preview.previewVendorHash - that is intended to be used to show what items you can get as a result of acquiring or using this item.
A common example of this in Destiny 1 was Eververse "Boxes," which could have many possible items. This "Preview Vendor" is not a vendor you can actually see in the game, but it defines categories and sale items for all of the possible items you could get from the Box so that the game can show them to you. We summarize that info here so that you don't have to do that Vendor lookup and aggregation manually. */
public struct DestinyDefinitionsItemsDestinyDerivedItemCategoryDefinition: APIModel {

    /** The localized string for the category title. This will be something describing the items you can get as a group, or your likelihood/the quantity you'll get. */
    public var categoryDescription: String?

    /** This is the list of all of the items for this category and the basic properties we'll know about them. */
    public var items: [DestinyDefinitionsItemsDestinyDerivedItemDefinition]?

    public init(categoryDescription: String? = nil, items: [DestinyDefinitionsItemsDestinyDerivedItemDefinition]? = nil) {
        self.categoryDescription = categoryDescription
        self.items = items
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        categoryDescription = try container.decodeIfPresent("categoryDescription")
        items = try container.decodeArrayIfPresent("items")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(categoryDescription, forKey: "categoryDescription")
        try container.encodeIfPresent(items, forKey: "items")
    }

    public static func == (lhs: DestinyDefinitionsItemsDestinyDerivedItemCategoryDefinition, rhs: DestinyDefinitionsItemsDestinyDerivedItemCategoryDefinition) -> Bool {
        guard lhs.categoryDescription == rhs.categoryDescription else { return false }
        guard lhs.items == rhs.items else { return false }
        return true
    }
}
