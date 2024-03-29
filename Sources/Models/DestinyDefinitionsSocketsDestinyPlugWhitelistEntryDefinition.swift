//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Defines a plug "Category" that is allowed to be plugged into a socket of this type.
This should be compared against a given plug item's DestinyInventoryItemDefinition.plug.plugCategoryHash, which indicates the plug item's category. */
public struct DestinyDefinitionsSocketsDestinyPlugWhitelistEntryDefinition: APIModel {

    /** The hash identifier of the Plug Category to compare against the plug item's plug.plugCategoryHash.
Note that this does NOT relate to any Definition in itself, it is only used for comparison purposes. */
    public var categoryHash: Int?

    /** The string identifier for the category, which is here mostly for debug purposes. */
    public var categoryIdentifier: String?

    /** The list of all plug items (DestinyInventoryItemDefinition) that the socket may randomly be populated with when reinitialized.
Which ones you should actually show are determined by the plug being inserted into the socket, and the socket’s type.
When you inspect the plug that could go into a Masterwork Socket, look up the socket type of the socket being inspected and find the DestinySocketTypeDefinition.
Then, look at the Plugs that can fit in that socket. Find the Whitelist in the DestinySocketTypeDefinition that matches the plug item’s categoryhash.
That whitelist entry will potentially have a new “reinitializationPossiblePlugHashes” property.If it does, that means we know what it will roll if you try to insert this plug into this socket. */
    public var reinitializationPossiblePlugHashes: [Int]?

    public init(categoryHash: Int? = nil, categoryIdentifier: String? = nil, reinitializationPossiblePlugHashes: [Int]? = nil) {
        self.categoryHash = categoryHash
        self.categoryIdentifier = categoryIdentifier
        self.reinitializationPossiblePlugHashes = reinitializationPossiblePlugHashes
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        categoryHash = try container.decodeIfPresent("categoryHash")
        categoryIdentifier = try container.decodeIfPresent("categoryIdentifier")
        reinitializationPossiblePlugHashes = try container.decodeArrayIfPresent("reinitializationPossiblePlugHashes")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(categoryHash, forKey: "categoryHash")
        try container.encodeIfPresent(categoryIdentifier, forKey: "categoryIdentifier")
        try container.encodeIfPresent(reinitializationPossiblePlugHashes, forKey: "reinitializationPossiblePlugHashes")
    }

    public static func == (lhs: DestinyDefinitionsSocketsDestinyPlugWhitelistEntryDefinition, rhs: DestinyDefinitionsSocketsDestinyPlugWhitelistEntryDefinition) -> Bool {
        guard lhs.categoryHash == rhs.categoryHash else { return false }
        guard lhs.categoryIdentifier == rhs.categoryIdentifier else { return false }
        guard lhs.reinitializationPossiblePlugHashes == rhs.reinitializationPossiblePlugHashes else { return false }
        return true
    }
}
