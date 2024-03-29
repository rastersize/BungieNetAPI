//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Well, we're here in Destiny 2, and Talent Grids are unfortunately still around.
The good news is that they're pretty much only being used for certain base information on items and for Builds/Subclasses. The bad news is that they still suck. If you really want this information, grab this component.
An important note is that talent grids are defined as such:
A Grid has 1:M Nodes, which has 1:M Steps.
Any given node can only have a single step active at one time, which represents the actual visual contents and effects of the Node (for instance, if you see a "Super Cool Bonus" node, the actual icon and text for the node is coming from the current Step of that node).
Nodes can be grouped into exclusivity sets *and* as of D2, exclusivity groups (which are collections of exclusivity sets that affect each other).
See DestinyTalentGridDefinition for more information. Brace yourself, the water's cold out there in the deep end. */
public struct DestinyEntitiesItemsDestinyItemTalentGridComponent: APIModel {

    /** If the item has a progression, it will be detailed here. A progression means that the item can gain experience. Thresholds of experience are what determines whether and when a talent node can be activated. */
    public var gridProgression: [String: Any]?

    /** Indicates whether the talent grid on this item is completed, and thus whether it should have a gold border around it.
Only will be true if the item actually *has* a talent grid, and only then if it is completed (i.e. every exclusive set has an activated node, and every non-exclusive set node has been activated) */
    public var isGridComplete: Bool?

    /** Detailed information about the individual nodes in the talent grid.
A node represents a single visual "pip" in the talent grid or Build detail view, though each node may have multiple "steps" which indicate the actual bonuses and visual representation of that node. */
    public var nodes: [DestinyDestinyTalentNode]?

    /** Most items don't have useful talent grids anymore, but Builds in particular still do.
You can use this hash to lookup the DestinyTalentGridDefinition attached to this item, which will be crucial for understanding the node values on the item. */
    public var talentGridHash: Int?

    public init(gridProgression: [String: Any]? = nil, isGridComplete: Bool? = nil, nodes: [DestinyDestinyTalentNode]? = nil, talentGridHash: Int? = nil) {
        self.gridProgression = gridProgression
        self.isGridComplete = isGridComplete
        self.nodes = nodes
        self.talentGridHash = talentGridHash
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        gridProgression = try container.decodeAnyIfPresent("gridProgression")
        isGridComplete = try container.decodeIfPresent("isGridComplete")
        nodes = try container.decodeArrayIfPresent("nodes")
        talentGridHash = try container.decodeIfPresent("talentGridHash")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeAnyIfPresent(gridProgression, forKey: "gridProgression")
        try container.encodeIfPresent(isGridComplete, forKey: "isGridComplete")
        try container.encodeIfPresent(nodes, forKey: "nodes")
        try container.encodeIfPresent(talentGridHash, forKey: "talentGridHash")
    }

    public static func == (lhs: DestinyEntitiesItemsDestinyItemTalentGridComponent, rhs: DestinyEntitiesItemsDestinyItemTalentGridComponent) -> Bool {
        guard NSDictionary(dictionary: lhs.gridProgression ?? [:]).isEqual(to: rhs.gridProgression ?? [:]) else { return false }
        guard lhs.isGridComplete == rhs.isGridComplete else { return false }
        guard lhs.nodes == rhs.nodes else { return false }
        guard lhs.talentGridHash == rhs.talentGridHash else { return false }
        return true
    }
}
