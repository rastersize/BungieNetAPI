//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct TrendingTrendingEntryCommunityCreation: APIModel {

    public var author: String?

    public var authorMembershipId: Int?

    public var body: String?

    public var media: String?

    public var postId: Int?

    public var title: String?

    public var upvotes: Int?

    public init(author: String? = nil, authorMembershipId: Int? = nil, body: String? = nil, media: String? = nil, postId: Int? = nil, title: String? = nil, upvotes: Int? = nil) {
        self.author = author
        self.authorMembershipId = authorMembershipId
        self.body = body
        self.media = media
        self.postId = postId
        self.title = title
        self.upvotes = upvotes
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        author = try container.decodeIfPresent("author")
        authorMembershipId = try container.decodeIfPresent("authorMembershipId")
        body = try container.decodeIfPresent("body")
        media = try container.decodeIfPresent("media")
        postId = try container.decodeIfPresent("postId")
        title = try container.decodeIfPresent("title")
        upvotes = try container.decodeIfPresent("upvotes")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(author, forKey: "author")
        try container.encodeIfPresent(authorMembershipId, forKey: "authorMembershipId")
        try container.encodeIfPresent(body, forKey: "body")
        try container.encodeIfPresent(media, forKey: "media")
        try container.encodeIfPresent(postId, forKey: "postId")
        try container.encodeIfPresent(title, forKey: "title")
        try container.encodeIfPresent(upvotes, forKey: "upvotes")
    }

    public static func == (lhs: TrendingTrendingEntryCommunityCreation, rhs: TrendingTrendingEntryCommunityCreation) -> Bool {
        guard lhs.author == rhs.author else { return false }
        guard lhs.authorMembershipId == rhs.authorMembershipId else { return false }
        guard lhs.body == rhs.body else { return false }
        guard lhs.media == rhs.media else { return false }
        guard lhs.postId == rhs.postId else { return false }
        guard lhs.title == rhs.title else { return false }
        guard lhs.upvotes == rhs.upvotes else { return false }
        return true
    }
}
