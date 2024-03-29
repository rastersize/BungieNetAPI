//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Dictates a rule around whether the plug is enabled or insertable.
In practice, the live Destiny data will refer to these entries by index. You can then look up that index in the appropriate property (enabledRules or insertionRules) to get the localized string for the failure message if it failed. */
public struct DestinyDefinitionsItemsDestinyPlugRuleDefinition: APIModel {

    /** The localized string to show if this rule fails. */
    public var failureMessage: String?

    public init(failureMessage: String? = nil) {
        self.failureMessage = failureMessage
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        failureMessage = try container.decodeIfPresent("failureMessage")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(failureMessage, forKey: "failureMessage")
    }

    public static func == (lhs: DestinyDefinitionsItemsDestinyPlugRuleDefinition, rhs: DestinyDefinitionsItemsDestinyPlugRuleDefinition) -> Bool {
        guard lhs.failureMessage == rhs.failureMessage else { return false }
        return true
    }
}
