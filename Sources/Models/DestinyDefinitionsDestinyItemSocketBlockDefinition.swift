//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** If defined, the item has at least one socket. */
public struct DestinyDefinitionsDestinyItemSocketBlockDefinition: APIModel {

    /** This was supposed to be a string that would give per-item details about sockets. In practice, it turns out that all this ever has is the localized word "details". ... that's lame, but perhaps it will become something cool in the future. */
    public var detail: String?

    /** Each intrinsic (or immutable/permanent) socket on an item is defined here, along with the plug that is permanently affixed to the socket. */
    public var intrinsicSockets: [DestinyDefinitionsDestinyItemIntrinsicSocketEntryDefinition]?

    /** A convenience property, that refers to the sockets in the "sockets" property, pre-grouped by category and ordered in the manner that they should be grouped in the UI. You could form this yourself with the existing data, but why would you want to? Enjoy life man. */
    public var socketCategories: [DestinyDefinitionsDestinyItemSocketCategoryDefinition]?

    /** Each non-intrinsic (or mutable) socket on an item is defined here. Check inside for more info. */
    public var socketEntries: [DestinyDefinitionsDestinyItemSocketEntryDefinition]?

    public init(detail: String? = nil, intrinsicSockets: [DestinyDefinitionsDestinyItemIntrinsicSocketEntryDefinition]? = nil, socketCategories: [DestinyDefinitionsDestinyItemSocketCategoryDefinition]? = nil, socketEntries: [DestinyDefinitionsDestinyItemSocketEntryDefinition]? = nil) {
        self.detail = detail
        self.intrinsicSockets = intrinsicSockets
        self.socketCategories = socketCategories
        self.socketEntries = socketEntries
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        detail = try container.decodeIfPresent("detail")
        intrinsicSockets = try container.decodeArrayIfPresent("intrinsicSockets")
        socketCategories = try container.decodeArrayIfPresent("socketCategories")
        socketEntries = try container.decodeArrayIfPresent("socketEntries")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(detail, forKey: "detail")
        try container.encodeIfPresent(intrinsicSockets, forKey: "intrinsicSockets")
        try container.encodeIfPresent(socketCategories, forKey: "socketCategories")
        try container.encodeIfPresent(socketEntries, forKey: "socketEntries")
    }

    public static func == (lhs: DestinyDefinitionsDestinyItemSocketBlockDefinition, rhs: DestinyDefinitionsDestinyItemSocketBlockDefinition) -> Bool {
        guard lhs.detail == rhs.detail else { return false }
        guard lhs.intrinsicSockets == rhs.intrinsicSockets else { return false }
        guard lhs.socketCategories == rhs.socketCategories else { return false }
        guard lhs.socketEntries == rhs.socketEntries else { return false }
        return true
    }
}