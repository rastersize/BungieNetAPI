//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** In an attempt to categorize items by type, usage, and other interesting properties, we created DestinyItemCategoryDefinition: information about types that is assembled using a set of heuristics that examine the properties of an item such as what inventory bucket it's in, its item type name, and whether it has or is missing certain blocks of data.
This heuristic is imperfect, however. If you find an item miscategorized, let us know on the Bungie API forums!
We then populate all of the categories that we think an item belongs to in its DestinyInventoryItemDefinition.itemCategoryHashes property. You can use that to provide your own custom item filtering, sorting, aggregating... go nuts on it! And let us know if you see more categories that you wish would be added! */
public struct DestinyDefinitionsDestinyItemCategoryDefinition: APIModel {

    /** If True, this category has been deprecated: it may have no items left, or there may be only legacy items that remain in it which are no longer relevant to the game. */
    public var deprecated: Bool?

    public var displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition?

    /** If the item in question has this category, it also should have this breaker type. */
    public var grantDestinyBreakerType: Int?

    /** If an item belongs to this category, it will also get this class restriction enum value.
See the other "grant"-prefixed properties on this definition for my color commentary. */
    public var grantDestinyClass: Int?

    /** If an item belongs to this category, it will also receive this item type. This is now how DestinyItemType is populated for items: it used to be an even jankier process, but that's a story that requires more alcohol. */
    public var grantDestinyItemType: Int?

    /** If an item belongs to this category, it will also receive this subtype enum value.
I know what you're thinking - what if it belongs to multiple categories that provide sub-types?
The last one processed wins, as is the case with all of these "grant" enums. Now you can see one reason why we moved away from these enums... but they're so convenient when they work, aren't they? */
    public var grantDestinySubType: Int?

    /** If true, this category is only used for grouping, and should not be evaluated with its own checks. Rather, the item only has this category if it has one of its child categories. */
    public var groupCategoryOnly: Bool?

    /** If this category is a "parent" category of other categories, those children will have their hashes listed in rendering order here, and can be looked up using these hashes against DestinyItemCategoryDefinition.
In this way, you can build up a visual hierarchy of item categories. That's what we did, and you can do it too. I believe in you. Yes, you, Carl.
(I hope someone named Carl reads this someday) */
    public var groupedCategoryHashes: [Int]?

    /** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
    public var hash: Int?

    /** The index of the entity as it was found in the investment tables. */
    public var index: Int?

    /** The janky regular expression we used against the item type to try and discern whether the item belongs to this category. */
    public var itemTypeRegex: String?

    /** If the item type matches this janky regex, it does *not* belong to this category. */
    public var itemTypeRegexNot: String?

    /** If the item belongs to this bucket, it does belong to this category. */
    public var originBucketIdentifier: String?

    /** All item category hashes of "parent" categories: categories that contain this as a child through the hierarchy of groupedCategoryHashes. It's a bit redundant, but having this child-centric list speeds up some calculations. */
    public var parentCategoryHashes: [Int]?

    /** If the item is a plug, this is the identifier we expect to find associated with it if it is in this category. */
    public var plugCategoryIdentifier: String?

    /** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
    public var redacted: Bool?

    /** A shortened version of the title. The reason why we have this is because the Armory in German had titles that were too long to display in our UI, so these were localized abbreviated versions of those categories. The property still exists today, even though the Armory doesn't exist for D2... yet. */
    public var shortTitle: String?

    /** If True, this category should be visible in UI. Sometimes we make categories that we don't think are interesting externally. It's up to you if you want to skip on showing them. */
    public var visible: Bool?

    public init(deprecated: Bool? = nil, displayProperties: DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition? = nil, grantDestinyBreakerType: Int? = nil, grantDestinyClass: Int? = nil, grantDestinyItemType: Int? = nil, grantDestinySubType: Int? = nil, groupCategoryOnly: Bool? = nil, groupedCategoryHashes: [Int]? = nil, hash: Int? = nil, index: Int? = nil, itemTypeRegex: String? = nil, itemTypeRegexNot: String? = nil, originBucketIdentifier: String? = nil, parentCategoryHashes: [Int]? = nil, plugCategoryIdentifier: String? = nil, redacted: Bool? = nil, shortTitle: String? = nil, visible: Bool? = nil) {
        self.deprecated = deprecated
        self.displayProperties = displayProperties
        self.grantDestinyBreakerType = grantDestinyBreakerType
        self.grantDestinyClass = grantDestinyClass
        self.grantDestinyItemType = grantDestinyItemType
        self.grantDestinySubType = grantDestinySubType
        self.groupCategoryOnly = groupCategoryOnly
        self.groupedCategoryHashes = groupedCategoryHashes
        self.hash = hash
        self.index = index
        self.itemTypeRegex = itemTypeRegex
        self.itemTypeRegexNot = itemTypeRegexNot
        self.originBucketIdentifier = originBucketIdentifier
        self.parentCategoryHashes = parentCategoryHashes
        self.plugCategoryIdentifier = plugCategoryIdentifier
        self.redacted = redacted
        self.shortTitle = shortTitle
        self.visible = visible
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        deprecated = try container.decodeIfPresent("deprecated")
        displayProperties = try container.decodeIfPresent("displayProperties")
        grantDestinyBreakerType = try container.decodeIfPresent("grantDestinyBreakerType")
        grantDestinyClass = try container.decodeIfPresent("grantDestinyClass")
        grantDestinyItemType = try container.decodeIfPresent("grantDestinyItemType")
        grantDestinySubType = try container.decodeIfPresent("grantDestinySubType")
        groupCategoryOnly = try container.decodeIfPresent("groupCategoryOnly")
        groupedCategoryHashes = try container.decodeArrayIfPresent("groupedCategoryHashes")
        hash = try container.decodeIfPresent("hash")
        index = try container.decodeIfPresent("index")
        itemTypeRegex = try container.decodeIfPresent("itemTypeRegex")
        itemTypeRegexNot = try container.decodeIfPresent("itemTypeRegexNot")
        originBucketIdentifier = try container.decodeIfPresent("originBucketIdentifier")
        parentCategoryHashes = try container.decodeArrayIfPresent("parentCategoryHashes")
        plugCategoryIdentifier = try container.decodeIfPresent("plugCategoryIdentifier")
        redacted = try container.decodeIfPresent("redacted")
        shortTitle = try container.decodeIfPresent("shortTitle")
        visible = try container.decodeIfPresent("visible")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(deprecated, forKey: "deprecated")
        try container.encodeIfPresent(displayProperties, forKey: "displayProperties")
        try container.encodeIfPresent(grantDestinyBreakerType, forKey: "grantDestinyBreakerType")
        try container.encodeIfPresent(grantDestinyClass, forKey: "grantDestinyClass")
        try container.encodeIfPresent(grantDestinyItemType, forKey: "grantDestinyItemType")
        try container.encodeIfPresent(grantDestinySubType, forKey: "grantDestinySubType")
        try container.encodeIfPresent(groupCategoryOnly, forKey: "groupCategoryOnly")
        try container.encodeIfPresent(groupedCategoryHashes, forKey: "groupedCategoryHashes")
        try container.encodeIfPresent(hash, forKey: "hash")
        try container.encodeIfPresent(index, forKey: "index")
        try container.encodeIfPresent(itemTypeRegex, forKey: "itemTypeRegex")
        try container.encodeIfPresent(itemTypeRegexNot, forKey: "itemTypeRegexNot")
        try container.encodeIfPresent(originBucketIdentifier, forKey: "originBucketIdentifier")
        try container.encodeIfPresent(parentCategoryHashes, forKey: "parentCategoryHashes")
        try container.encodeIfPresent(plugCategoryIdentifier, forKey: "plugCategoryIdentifier")
        try container.encodeIfPresent(redacted, forKey: "redacted")
        try container.encodeIfPresent(shortTitle, forKey: "shortTitle")
        try container.encodeIfPresent(visible, forKey: "visible")
    }

    public static func == (lhs: DestinyDefinitionsDestinyItemCategoryDefinition, rhs: DestinyDefinitionsDestinyItemCategoryDefinition) -> Bool {
        guard lhs.deprecated == rhs.deprecated else { return false }
        guard lhs.displayProperties == rhs.displayProperties else { return false }
        guard lhs.grantDestinyBreakerType == rhs.grantDestinyBreakerType else { return false }
        guard lhs.grantDestinyClass == rhs.grantDestinyClass else { return false }
        guard lhs.grantDestinyItemType == rhs.grantDestinyItemType else { return false }
        guard lhs.grantDestinySubType == rhs.grantDestinySubType else { return false }
        guard lhs.groupCategoryOnly == rhs.groupCategoryOnly else { return false }
        guard lhs.groupedCategoryHashes == rhs.groupedCategoryHashes else { return false }
        guard lhs.hash == rhs.hash else { return false }
        guard lhs.index == rhs.index else { return false }
        guard lhs.itemTypeRegex == rhs.itemTypeRegex else { return false }
        guard lhs.itemTypeRegexNot == rhs.itemTypeRegexNot else { return false }
        guard lhs.originBucketIdentifier == rhs.originBucketIdentifier else { return false }
        guard lhs.parentCategoryHashes == rhs.parentCategoryHashes else { return false }
        guard lhs.plugCategoryIdentifier == rhs.plugCategoryIdentifier else { return false }
        guard lhs.redacted == rhs.redacted else { return false }
        guard lhs.shortTitle == rhs.shortTitle else { return false }
        guard lhs.visible == rhs.visible else { return false }
        return true
    }
}
