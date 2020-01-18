//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The response object for retrieving an individual instanced item. None of these components are relevant for an item that doesn't have an "itemInstanceId": for those, get your information from the DestinyInventoryDefinition. */
public struct DestinyResponsesDestinyItemResponse: APIModel {

    /** If the item is on a character, this will return the ID of the character that is holding the item. */
    public var characterId: Int?

    /** Basic instance data for the item.
COMPONENT TYPE: ItemInstances */
    public var instance: [String: Any]?

    /** Common data for the item relevant to its non-instanced properties.
COMPONENT TYPE: ItemCommonData */
    public var item: [String: Any]?

    /** Information specifically about the item's objectives.
COMPONENT TYPE: ItemObjectives */
    public var objectives: [String: Any]?

    /** Information specifically about the perks currently active on the item.
COMPONENT TYPE: ItemPerks */
    public var perks: [String: Any]?

    /** Information about objectives on Plugs for a given item. See the component's documentation for more info.
COMPONENT TYPE: ItemPlugObjectives */
    public var plugObjectives: [String: Any]?

    /** Information about how to render the item in 3D.
COMPONENT TYPE: ItemRenderData */
    public var renderData: [String: Any]?

    /** Information about the Reusable Plugs for sockets on an item. These are plugs that you can insert into the given socket regardless of if you actually own an instance of that plug: they are logic-driven plugs rather than inventory-driven.
 These may need to be combined with Plug Set component data to get a full picture of available plugs on a given socket.
 COMPONENT TYPE: ItemReusablePlugs */
    public var reusablePlugs: [String: Any]?

    /** Information about the sockets of the item: which are currently active, what potential sockets you could have and the stats/abilities/perks you can gain from them.
COMPONENT TYPE: ItemSockets */
    public var sockets: [String: Any]?

    /** Information about the computed stats of the item: power, defense, etc...
COMPONENT TYPE: ItemStats */
    public var stats: [String: Any]?

    /** Information about the talent grid attached to the item. Talent nodes can provide a variety of benefits and abilities, and in Destiny 2 are used almost exclusively for the character's "Builds".
COMPONENT TYPE: ItemTalentGrids */
    public var talentGrid: [String: Any]?

    public init(characterId: Int? = nil, instance: [String: Any]? = nil, item: [String: Any]? = nil, objectives: [String: Any]? = nil, perks: [String: Any]? = nil, plugObjectives: [String: Any]? = nil, renderData: [String: Any]? = nil, reusablePlugs: [String: Any]? = nil, sockets: [String: Any]? = nil, stats: [String: Any]? = nil, talentGrid: [String: Any]? = nil) {
        self.characterId = characterId
        self.instance = instance
        self.item = item
        self.objectives = objectives
        self.perks = perks
        self.plugObjectives = plugObjectives
        self.renderData = renderData
        self.reusablePlugs = reusablePlugs
        self.sockets = sockets
        self.stats = stats
        self.talentGrid = talentGrid
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        characterId = try container.decodeIfPresent("characterId")
        instance = try container.decodeAnyIfPresent("instance")
        item = try container.decodeAnyIfPresent("item")
        objectives = try container.decodeAnyIfPresent("objectives")
        perks = try container.decodeAnyIfPresent("perks")
        plugObjectives = try container.decodeAnyIfPresent("plugObjectives")
        renderData = try container.decodeAnyIfPresent("renderData")
        reusablePlugs = try container.decodeAnyIfPresent("reusablePlugs")
        sockets = try container.decodeAnyIfPresent("sockets")
        stats = try container.decodeAnyIfPresent("stats")
        talentGrid = try container.decodeAnyIfPresent("talentGrid")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(characterId, forKey: "characterId")
        try container.encodeAnyIfPresent(instance, forKey: "instance")
        try container.encodeAnyIfPresent(item, forKey: "item")
        try container.encodeAnyIfPresent(objectives, forKey: "objectives")
        try container.encodeAnyIfPresent(perks, forKey: "perks")
        try container.encodeAnyIfPresent(plugObjectives, forKey: "plugObjectives")
        try container.encodeAnyIfPresent(renderData, forKey: "renderData")
        try container.encodeAnyIfPresent(reusablePlugs, forKey: "reusablePlugs")
        try container.encodeAnyIfPresent(sockets, forKey: "sockets")
        try container.encodeAnyIfPresent(stats, forKey: "stats")
        try container.encodeAnyIfPresent(talentGrid, forKey: "talentGrid")
    }

    public static func == (lhs: DestinyResponsesDestinyItemResponse, rhs: DestinyResponsesDestinyItemResponse) -> Bool {
        guard lhs.characterId == rhs.characterId else { return false }
        guard NSDictionary(dictionary: lhs.instance ?? [:]).isEqual(to: rhs.instance ?? [:]) else { return false }
        guard NSDictionary(dictionary: lhs.item ?? [:]).isEqual(to: rhs.item ?? [:]) else { return false }
        guard NSDictionary(dictionary: lhs.objectives ?? [:]).isEqual(to: rhs.objectives ?? [:]) else { return false }
        guard NSDictionary(dictionary: lhs.perks ?? [:]).isEqual(to: rhs.perks ?? [:]) else { return false }
        guard NSDictionary(dictionary: lhs.plugObjectives ?? [:]).isEqual(to: rhs.plugObjectives ?? [:]) else { return false }
        guard NSDictionary(dictionary: lhs.renderData ?? [:]).isEqual(to: rhs.renderData ?? [:]) else { return false }
        guard NSDictionary(dictionary: lhs.reusablePlugs ?? [:]).isEqual(to: rhs.reusablePlugs ?? [:]) else { return false }
        guard NSDictionary(dictionary: lhs.sockets ?? [:]).isEqual(to: rhs.sockets ?? [:]) else { return false }
        guard NSDictionary(dictionary: lhs.stats ?? [:]).isEqual(to: rhs.stats ?? [:]) else { return false }
        guard NSDictionary(dictionary: lhs.talentGrid ?? [:]).isEqual(to: rhs.talentGrid ?? [:]) else { return false }
        return true
    }
}