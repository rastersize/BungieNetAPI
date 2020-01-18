//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** If a vendor can ever end up performing actions, these are the properties that will be related to those actions. I'm not going to bother documenting this yet, as it is unused and unclear if it will ever be used... but in case it is ever populated and someone finds it useful, it is defined here. */
public struct DestinyDefinitionsDestinyVendorActionDefinition: APIModel {

    public var actionHash: Int?

    public var actionId: String?

    public var autoPerformAction: Bool?

    public var description: String?

    public var executeSeconds: Int?

    public var icon: String?

    public var isPositive: Bool?

    public var name: String?

    public var verb: String?

    public init(actionHash: Int? = nil, actionId: String? = nil, autoPerformAction: Bool? = nil, description: String? = nil, executeSeconds: Int? = nil, icon: String? = nil, isPositive: Bool? = nil, name: String? = nil, verb: String? = nil) {
        self.actionHash = actionHash
        self.actionId = actionId
        self.autoPerformAction = autoPerformAction
        self.description = description
        self.executeSeconds = executeSeconds
        self.icon = icon
        self.isPositive = isPositive
        self.name = name
        self.verb = verb
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        actionHash = try container.decodeIfPresent("actionHash")
        actionId = try container.decodeIfPresent("actionId")
        autoPerformAction = try container.decodeIfPresent("autoPerformAction")
        description = try container.decodeIfPresent("description")
        executeSeconds = try container.decodeIfPresent("executeSeconds")
        icon = try container.decodeIfPresent("icon")
        isPositive = try container.decodeIfPresent("isPositive")
        name = try container.decodeIfPresent("name")
        verb = try container.decodeIfPresent("verb")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(actionHash, forKey: "actionHash")
        try container.encodeIfPresent(actionId, forKey: "actionId")
        try container.encodeIfPresent(autoPerformAction, forKey: "autoPerformAction")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(executeSeconds, forKey: "executeSeconds")
        try container.encodeIfPresent(icon, forKey: "icon")
        try container.encodeIfPresent(isPositive, forKey: "isPositive")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(verb, forKey: "verb")
    }

    public static func == (lhs: DestinyDefinitionsDestinyVendorActionDefinition, rhs: DestinyDefinitionsDestinyVendorActionDefinition) -> Bool {
        guard lhs.actionHash == rhs.actionHash else { return false }
        guard lhs.actionId == rhs.actionId else { return false }
        guard lhs.autoPerformAction == rhs.autoPerformAction else { return false }
        guard lhs.description == rhs.description else { return false }
        guard lhs.executeSeconds == rhs.executeSeconds else { return false }
        guard lhs.icon == rhs.icon else { return false }
        guard lhs.isPositive == rhs.isPositive else { return false }
        guard lhs.name == rhs.name else { return false }
        guard lhs.verb == rhs.verb else { return false }
        return true
    }
}