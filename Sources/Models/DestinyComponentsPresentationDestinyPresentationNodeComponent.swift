//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyComponentsPresentationDestinyPresentationNodeComponent: APIModel {

    /** The value at which the presentation ode is considered to be completed. */
    public var completionValue: Int?

    /** An optional property: presentation nodes MAY have objectives, which can be used to infer more human readable data about the progress. However, progressValue and completionValue ought to be considered the canonical values for progress on Progression Nodes. */
    public var objective: [String: Any]?

    /** How much of the presentation node is considered to be completed so far by the given character/profile. */
    public var progressValue: Int?

    public var state: Int?

    public init(completionValue: Int? = nil, objective: [String: Any]? = nil, progressValue: Int? = nil, state: Int? = nil) {
        self.completionValue = completionValue
        self.objective = objective
        self.progressValue = progressValue
        self.state = state
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        completionValue = try container.decodeIfPresent("completionValue")
        objective = try container.decodeAnyIfPresent("objective")
        progressValue = try container.decodeIfPresent("progressValue")
        state = try container.decodeIfPresent("state")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(completionValue, forKey: "completionValue")
        try container.encodeAnyIfPresent(objective, forKey: "objective")
        try container.encodeIfPresent(progressValue, forKey: "progressValue")
        try container.encodeIfPresent(state, forKey: "state")
    }

    public static func == (lhs: DestinyComponentsPresentationDestinyPresentationNodeComponent, rhs: DestinyComponentsPresentationDestinyPresentationNodeComponent) -> Bool {
        guard lhs.completionValue == rhs.completionValue else { return false }
        guard NSDictionary(dictionary: lhs.objective ?? [:]).isEqual(to: rhs.objective ?? [:]) else { return false }
        guard lhs.progressValue == rhs.progressValue else { return false }
        guard lhs.state == rhs.state else { return false }
        return true
    }
}
