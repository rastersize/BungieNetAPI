//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent: APIModel {

    public var data: [String: DestinyComponentsItemsDestinyItemPlugObjectivesComponent]?

    public var privacy: Int?

    public init(data: [String: DestinyComponentsItemsDestinyItemPlugObjectivesComponent]? = nil, privacy: Int? = nil) {
        self.data = data
        self.privacy = privacy
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decodeIfPresent("data")
        privacy = try container.decodeIfPresent("privacy")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(data, forKey: "data")
        try container.encodeIfPresent(privacy, forKey: "privacy")
    }

    public static func == (lhs: DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent, rhs: DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent) -> Bool {
        guard lhs.data == rhs.data else { return false }
        guard lhs.privacy == rhs.privacy else { return false }
        return true
    }
}
