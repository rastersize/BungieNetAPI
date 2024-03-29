//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DatesDateRange: APIModel {

    public var end: DateTime?

    public var start: DateTime?

    public init(end: DateTime? = nil, start: DateTime? = nil) {
        self.end = end
        self.start = start
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        end = try container.decodeIfPresent("end")
        start = try container.decodeIfPresent("start")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(end, forKey: "end")
        try container.encodeIfPresent(start, forKey: "start")
    }

    public static func == (lhs: DatesDateRange, rhs: DatesDateRange) -> Bool {
        guard lhs.end == rhs.end else { return false }
        guard lhs.start == rhs.start else { return false }
        return true
    }
}
