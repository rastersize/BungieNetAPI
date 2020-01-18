//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct InterpolationInterpolationPoint: APIModel {

    public var value: Int?

    public var weight: Int?

    public init(value: Int? = nil, weight: Int? = nil) {
        self.value = value
        self.weight = weight
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        value = try container.decodeIfPresent("value")
        weight = try container.decodeIfPresent("weight")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(value, forKey: "value")
        try container.encodeIfPresent(weight, forKey: "weight")
    }

    public static func == (lhs: InterpolationInterpolationPoint, rhs: InterpolationInterpolationPoint) -> Bool {
        guard lhs.value == rhs.value else { return false }
        guard lhs.weight == rhs.weight else { return false }
        return true
    }
}