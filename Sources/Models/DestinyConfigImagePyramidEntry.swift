//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyConfigImagePyramidEntry: APIModel {

    /** The factor by which the original image size has been reduced. */
    public var factor: Float?

    /** The name of the subfolder where these images are located. */
    public var name: String?

    public init(factor: Float? = nil, name: String? = nil) {
        self.factor = factor
        self.name = name
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        factor = try container.decodeIfPresent("factor")
        name = try container.decodeIfPresent("name")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(factor, forKey: "factor")
        try container.encodeIfPresent(name, forKey: "name")
    }

    public static func == (lhs: DestinyConfigImagePyramidEntry, rhs: DestinyConfigImagePyramidEntry) -> Bool {
        guard lhs.factor == rhs.factor else { return false }
        guard lhs.name == rhs.name else { return false }
        return true
    }
}
