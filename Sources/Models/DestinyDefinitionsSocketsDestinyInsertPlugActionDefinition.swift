//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Data related to what happens while a plug is being inserted, mostly for UI purposes. */
public struct DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition: APIModel {

    /** How long it takes for the Plugging of the item to be completed once it is initiated, if you care. */
    public var actionExecuteSeconds: Int?

    /** The type of action being performed when you act on this Socket Type. The most common value is "insert plug", but there are others as well (for instance, a "Masterwork" socket may allow for Re-initialization, and an Infusion socket allows for items to be consumed to upgrade the item) */
    public var actionType: Int?

    public init(actionExecuteSeconds: Int? = nil, actionType: Int? = nil) {
        self.actionExecuteSeconds = actionExecuteSeconds
        self.actionType = actionType
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        actionExecuteSeconds = try container.decodeIfPresent("actionExecuteSeconds")
        actionType = try container.decodeIfPresent("actionType")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(actionExecuteSeconds, forKey: "actionExecuteSeconds")
        try container.encodeIfPresent(actionType, forKey: "actionType")
    }

    public static func == (lhs: DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition, rhs: DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition) -> Bool {
        guard lhs.actionExecuteSeconds == rhs.actionExecuteSeconds else { return false }
        guard lhs.actionType == rhs.actionType else { return false }
        return true
    }
}