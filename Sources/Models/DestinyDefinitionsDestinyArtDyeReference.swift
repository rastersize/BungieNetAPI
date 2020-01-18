//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyDefinitionsDestinyArtDyeReference: APIModel {

    public var artDyeChannelHash: Int?

    public init(artDyeChannelHash: Int? = nil) {
        self.artDyeChannelHash = artDyeChannelHash
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        artDyeChannelHash = try container.decodeIfPresent("artDyeChannelHash")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(artDyeChannelHash, forKey: "artDyeChannelHash")
    }

    public static func == (lhs: DestinyDefinitionsDestinyArtDyeReference, rhs: DestinyDefinitionsDestinyArtDyeReference) -> Bool {
        guard lhs.artDyeChannelHash == rhs.artDyeChannelHash else { return false }
        return true
    }
}