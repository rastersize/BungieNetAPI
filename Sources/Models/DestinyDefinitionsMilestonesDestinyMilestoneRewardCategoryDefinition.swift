//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The definition of a category of rewards, that contains many individual rewards. */
public struct DestinyDefinitionsMilestonesDestinyMilestoneRewardCategoryDefinition: APIModel {

    /** Identifies the reward category. Only guaranteed unique within this specific component! */
    public var categoryHash: Int?

    /** The string identifier for the category, if you want to use it for some end. Guaranteed unique within the specific component. */
    public var categoryIdentifier: String?

    /** Hopefully this is obvious by now. */
    public var displayProperties: [String: Any]?

    /** If you want to use BNet's recommended order for rendering categories programmatically, use this value and compare it to other categories to determine the order in which they should be rendered. I don't feel great about putting this here, I won't lie. */
    public var order: Int?

    /** If this milestone can provide rewards, this will define the sets of rewards that can be earned, the conditions under which they can be acquired, internal data that we'll use at runtime to determine whether you've already earned or redeemed this set of rewards, and the category that this reward should be placed under. */
    public var rewardEntries: [String: DestinyDefinitionsMilestonesDestinyMilestoneRewardEntryDefinition]?

    public init(categoryHash: Int? = nil, categoryIdentifier: String? = nil, displayProperties: [String: Any]? = nil, order: Int? = nil, rewardEntries: [String: DestinyDefinitionsMilestonesDestinyMilestoneRewardEntryDefinition]? = nil) {
        self.categoryHash = categoryHash
        self.categoryIdentifier = categoryIdentifier
        self.displayProperties = displayProperties
        self.order = order
        self.rewardEntries = rewardEntries
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        categoryHash = try container.decodeIfPresent("categoryHash")
        categoryIdentifier = try container.decodeIfPresent("categoryIdentifier")
        displayProperties = try container.decodeAnyIfPresent("displayProperties")
        order = try container.decodeIfPresent("order")
        rewardEntries = try container.decodeIfPresent("rewardEntries")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(categoryHash, forKey: "categoryHash")
        try container.encodeIfPresent(categoryIdentifier, forKey: "categoryIdentifier")
        try container.encodeAnyIfPresent(displayProperties, forKey: "displayProperties")
        try container.encodeIfPresent(order, forKey: "order")
        try container.encodeIfPresent(rewardEntries, forKey: "rewardEntries")
    }

    public static func == (lhs: DestinyDefinitionsMilestonesDestinyMilestoneRewardCategoryDefinition, rhs: DestinyDefinitionsMilestonesDestinyMilestoneRewardCategoryDefinition) -> Bool {
        guard lhs.categoryHash == rhs.categoryHash else { return false }
        guard lhs.categoryIdentifier == rhs.categoryIdentifier else { return false }
        guard NSDictionary(dictionary: lhs.displayProperties ?? [:]).isEqual(to: rhs.displayProperties ?? [:]) else { return false }
        guard lhs.order == rhs.order else { return false }
        guard lhs.rewardEntries == rhs.rewardEntries else { return false }
        return true
    }
}
