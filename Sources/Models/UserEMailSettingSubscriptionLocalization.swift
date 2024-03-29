//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Localized text relevant to a given EMail setting in a given localization. Extra settings specifically for subscriptions. */
public struct UserEMailSettingSubscriptionLocalization: APIModel {

    public var description: String?

    public var knownUserActionText: String?

    public var registeredUserDescription: String?

    public var title: String?

    public var unknownUserActionText: String?

    public var unknownUserDescription: String?

    public var unregisteredUserDescription: String?

    public init(description: String? = nil, knownUserActionText: String? = nil, registeredUserDescription: String? = nil, title: String? = nil, unknownUserActionText: String? = nil, unknownUserDescription: String? = nil, unregisteredUserDescription: String? = nil) {
        self.description = description
        self.knownUserActionText = knownUserActionText
        self.registeredUserDescription = registeredUserDescription
        self.title = title
        self.unknownUserActionText = unknownUserActionText
        self.unknownUserDescription = unknownUserDescription
        self.unregisteredUserDescription = unregisteredUserDescription
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        description = try container.decodeIfPresent("description")
        knownUserActionText = try container.decodeIfPresent("knownUserActionText")
        registeredUserDescription = try container.decodeIfPresent("registeredUserDescription")
        title = try container.decodeIfPresent("title")
        unknownUserActionText = try container.decodeIfPresent("unknownUserActionText")
        unknownUserDescription = try container.decodeIfPresent("unknownUserDescription")
        unregisteredUserDescription = try container.decodeIfPresent("unregisteredUserDescription")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(knownUserActionText, forKey: "knownUserActionText")
        try container.encodeIfPresent(registeredUserDescription, forKey: "registeredUserDescription")
        try container.encodeIfPresent(title, forKey: "title")
        try container.encodeIfPresent(unknownUserActionText, forKey: "unknownUserActionText")
        try container.encodeIfPresent(unknownUserDescription, forKey: "unknownUserDescription")
        try container.encodeIfPresent(unregisteredUserDescription, forKey: "unregisteredUserDescription")
    }

    public static func == (lhs: UserEMailSettingSubscriptionLocalization, rhs: UserEMailSettingSubscriptionLocalization) -> Bool {
        guard lhs.description == rhs.description else { return false }
        guard lhs.knownUserActionText == rhs.knownUserActionText else { return false }
        guard lhs.registeredUserDescription == rhs.registeredUserDescription else { return false }
        guard lhs.title == rhs.title else { return false }
        guard lhs.unknownUserActionText == rhs.unknownUserActionText else { return false }
        guard lhs.unknownUserDescription == rhs.unknownUserDescription else { return false }
        guard lhs.unregisteredUserDescription == rhs.unregisteredUserDescription else { return false }
        return true
    }
}
