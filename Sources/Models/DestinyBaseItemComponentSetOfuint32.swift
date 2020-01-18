//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyBaseItemComponentSetOfuint32: APIModel {

    public var objectives: DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent?

    public init(objectives: DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent? = nil) {
        self.objectives = objectives
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        objectives = try container.decodeIfPresent("objectives")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(objectives, forKey: "objectives")
    }

    public static func == (lhs: DestinyBaseItemComponentSetOfuint32, rhs: DestinyBaseItemComponentSetOfuint32) -> Bool {
        guard lhs.objectives == rhs.objectives else { return false }
        return true
    }
}