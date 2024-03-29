//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyItemComponentSetOfuint32: APIModel {

    public var instances: DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent?

    public var objectives: DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent?

    public var perks: DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent?

    public var plugObjectives: DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponent?

    public var plugStates: DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent?

    public var renderData: DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent?

    public var reusablePlugs: DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponent?

    public var sockets: DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent?

    public var stats: DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent?

    public var talentGrids: DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent?

    public init(instances: DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent? = nil, objectives: DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent? = nil, perks: DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent? = nil, plugObjectives: DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponent? = nil, plugStates: DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent? = nil, renderData: DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent? = nil, reusablePlugs: DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponent? = nil, sockets: DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent? = nil, stats: DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent? = nil, talentGrids: DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent? = nil) {
        self.instances = instances
        self.objectives = objectives
        self.perks = perks
        self.plugObjectives = plugObjectives
        self.plugStates = plugStates
        self.renderData = renderData
        self.reusablePlugs = reusablePlugs
        self.sockets = sockets
        self.stats = stats
        self.talentGrids = talentGrids
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        instances = try container.decodeIfPresent("instances")
        objectives = try container.decodeIfPresent("objectives")
        perks = try container.decodeIfPresent("perks")
        plugObjectives = try container.decodeIfPresent("plugObjectives")
        plugStates = try container.decodeIfPresent("plugStates")
        renderData = try container.decodeIfPresent("renderData")
        reusablePlugs = try container.decodeIfPresent("reusablePlugs")
        sockets = try container.decodeIfPresent("sockets")
        stats = try container.decodeIfPresent("stats")
        talentGrids = try container.decodeIfPresent("talentGrids")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(instances, forKey: "instances")
        try container.encodeIfPresent(objectives, forKey: "objectives")
        try container.encodeIfPresent(perks, forKey: "perks")
        try container.encodeIfPresent(plugObjectives, forKey: "plugObjectives")
        try container.encodeIfPresent(plugStates, forKey: "plugStates")
        try container.encodeIfPresent(renderData, forKey: "renderData")
        try container.encodeIfPresent(reusablePlugs, forKey: "reusablePlugs")
        try container.encodeIfPresent(sockets, forKey: "sockets")
        try container.encodeIfPresent(stats, forKey: "stats")
        try container.encodeIfPresent(talentGrids, forKey: "talentGrids")
    }

    public static func == (lhs: DestinyItemComponentSetOfuint32, rhs: DestinyItemComponentSetOfuint32) -> Bool {
        guard lhs.instances == rhs.instances else { return false }
        guard lhs.objectives == rhs.objectives else { return false }
        guard lhs.perks == rhs.perks else { return false }
        guard lhs.plugObjectives == rhs.plugObjectives else { return false }
        guard lhs.plugStates == rhs.plugStates else { return false }
        guard lhs.renderData == rhs.renderData else { return false }
        guard lhs.reusablePlugs == rhs.reusablePlugs else { return false }
        guard lhs.sockets == rhs.sockets else { return false }
        guard lhs.stats == rhs.stats else { return false }
        guard lhs.talentGrids == rhs.talentGrids else { return false }
        return true
    }
}
