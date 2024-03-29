//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinySocketsDestinyItemPlug: APIModel {

    /** If true, this plug has met all of its insertion requirements. Big if true. */
    public var canInsert: Bool?

    /** If a plug is not enabled, this will be populated with indexes into the plug item definition's plug.enabledRules property, so that you can show the reasons why it is not enabled.
This list will be empty if the plug is enabled. */
    public var enableFailIndexes: [Int]?

    /** If true, this plug will provide its benefits while inserted. */
    public var enabled: Bool?

    /** If the plug cannot be inserted for some reason, this will have the indexes into the plug item definition's plug.insertionRules property, so you can show the reasons why it can't be inserted.
This list will be empty if the plug can be inserted. */
    public var insertFailIndexes: [Int]?

    /** The hash identifier of the DestinyInventoryItemDefinition that represents this plug. */
    public var plugItemHash: Int?

    /** Sometimes, Plugs may have objectives: these are often used for flavor and display purposes, but they can be used for any arbitrary purpose (both fortunately and unfortunately). Recently (with Season 2) they were expanded in use to be used as the "gating" for whether the plug can be inserted at all. For instance, a Plug might be tracking the number of PVP kills you have made. It will use the parent item's data about that tracking status to determine what to show, and will generally show it using the DestinyObjectiveDefinition's progressDescription property. Refer to the plug's itemHash and objective property for more information if you would like to display even more data. */
    public var plugObjectives: [DestinyQuestsDestinyObjectiveProgress]?

    public init(canInsert: Bool? = nil, enableFailIndexes: [Int]? = nil, enabled: Bool? = nil, insertFailIndexes: [Int]? = nil, plugItemHash: Int? = nil, plugObjectives: [DestinyQuestsDestinyObjectiveProgress]? = nil) {
        self.canInsert = canInsert
        self.enableFailIndexes = enableFailIndexes
        self.enabled = enabled
        self.insertFailIndexes = insertFailIndexes
        self.plugItemHash = plugItemHash
        self.plugObjectives = plugObjectives
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        canInsert = try container.decodeIfPresent("canInsert")
        enableFailIndexes = try container.decodeArrayIfPresent("enableFailIndexes")
        enabled = try container.decodeIfPresent("enabled")
        insertFailIndexes = try container.decodeArrayIfPresent("insertFailIndexes")
        plugItemHash = try container.decodeIfPresent("plugItemHash")
        plugObjectives = try container.decodeArrayIfPresent("plugObjectives")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(canInsert, forKey: "canInsert")
        try container.encodeIfPresent(enableFailIndexes, forKey: "enableFailIndexes")
        try container.encodeIfPresent(enabled, forKey: "enabled")
        try container.encodeIfPresent(insertFailIndexes, forKey: "insertFailIndexes")
        try container.encodeIfPresent(plugItemHash, forKey: "plugItemHash")
        try container.encodeIfPresent(plugObjectives, forKey: "plugObjectives")
    }

    public static func == (lhs: DestinySocketsDestinyItemPlug, rhs: DestinySocketsDestinyItemPlug) -> Bool {
        guard lhs.canInsert == rhs.canInsert else { return false }
        guard lhs.enableFailIndexes == rhs.enableFailIndexes else { return false }
        guard lhs.enabled == rhs.enabled else { return false }
        guard lhs.insertFailIndexes == rhs.insertFailIndexes else { return false }
        guard lhs.plugItemHash == rhs.plugItemHash else { return false }
        guard lhs.plugObjectives == rhs.plugObjectives else { return false }
        return true
    }
}
