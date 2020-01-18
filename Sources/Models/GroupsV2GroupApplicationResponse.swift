//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct GroupsV2GroupApplicationResponse: APIModel {

    public var resolution: Int?

    public init(resolution: Int? = nil) {
        self.resolution = resolution
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        resolution = try container.decodeIfPresent("resolution")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(resolution, forKey: "resolution")
    }

    public static func == (lhs: GroupsV2GroupApplicationResponse, rhs: GroupsV2GroupApplicationResponse) -> Bool {
        guard lhs.resolution == rhs.resolution else { return false }
        return true
    }
}