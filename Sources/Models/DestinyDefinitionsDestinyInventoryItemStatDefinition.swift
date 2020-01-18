//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Defines a specific stat value on an item, and the minimum/maximum range that we could compute for the item based on our heuristics for how the item might be generated.
Not guaranteed to match real-world instances of the item, but should hopefully at least be close. If it's not close, let us know on the Bungie API forums. */
public struct DestinyDefinitionsDestinyInventoryItemStatDefinition: APIModel {

    /** The maximum possible value for this stat that we think the item can roll.
WARNING: In Destiny 1, this field was calculated using the potential stat rolls on the item's talent grid. In Destiny 2, items no longer have meaningful talent grids and instead have sockets: but the calculation of this field was never altered to adapt to this change. As such, this field should be considered deprecated until we can address this oversight. */
    public var maximum: Int?

    /** The minimum possible value for this stat that we think the item can roll. */
    public var minimum: Int?

    /** The hash for the DestinyStatDefinition representing this stat. */
    public var statHash: Int?

    /** This value represents the stat value assuming the minimum possible roll but accounting for any mandatory bonuses that should be applied to the stat on item creation.
In Destiny 1, this was different from the "minimum" value because there were certain conditions where an item could be theoretically lower level/value than the initial roll. 
In Destiny 2, this is not possible unless Talent Grids begin to be used again for these purposes or some other system change occurs... thus in practice, value and minimum should be the same in Destiny 2. Good riddance. */
    public var value: Int?

    public init(maximum: Int? = nil, minimum: Int? = nil, statHash: Int? = nil, value: Int? = nil) {
        self.maximum = maximum
        self.minimum = minimum
        self.statHash = statHash
        self.value = value
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        maximum = try container.decodeIfPresent("maximum")
        minimum = try container.decodeIfPresent("minimum")
        statHash = try container.decodeIfPresent("statHash")
        value = try container.decodeIfPresent("value")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(maximum, forKey: "maximum")
        try container.encodeIfPresent(minimum, forKey: "minimum")
        try container.encodeIfPresent(statHash, forKey: "statHash")
        try container.encodeIfPresent(value, forKey: "value")
    }

    public static func == (lhs: DestinyDefinitionsDestinyInventoryItemStatDefinition, rhs: DestinyDefinitionsDestinyInventoryItemStatDefinition) -> Bool {
        guard lhs.maximum == rhs.maximum else { return false }
        guard lhs.minimum == rhs.minimum else { return false }
        guard lhs.statHash == rhs.statHash else { return false }
        guard lhs.value == rhs.value else { return false }
        return true
    }
}