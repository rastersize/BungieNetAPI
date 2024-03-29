//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ForumPostSearchResponse: APIModel {

    public var authors: [UserGeneralUser]?

    public var availablePages: Int?

    public var groups: [GroupsV2GroupResponse]?

    public var hasMore: Bool?

    public var polls: [ForumPollResponse]?

    public var query: QueriesPagedQuery?

    public var recruitmentDetails: [ForumForumRecruitmentDetail]?

    public var relatedPosts: [ForumPostResponse]?

    public var replacementContinuationToken: String?

    public var results: [ForumPostResponse]?

    public var searchedTags: [TagsModelsContractsTagResponse]?

    public var totalResults: Int?

    /** If useTotalResults is true, then totalResults represents an accurate count.
If False, it does not, and may be estimated/only the size of the current page.
Either way, you should probably always only trust hasMore.
This is a long-held historical throwback to when we used to do paging with known total results. Those queries toasted our database, and we were left to hastily alter our endpoints and create backward- compatible shims, of which useTotalResults is one. */
    public var useTotalResults: Bool?

    public init(authors: [UserGeneralUser]? = nil, availablePages: Int? = nil, groups: [GroupsV2GroupResponse]? = nil, hasMore: Bool? = nil, polls: [ForumPollResponse]? = nil, query: QueriesPagedQuery? = nil, recruitmentDetails: [ForumForumRecruitmentDetail]? = nil, relatedPosts: [ForumPostResponse]? = nil, replacementContinuationToken: String? = nil, results: [ForumPostResponse]? = nil, searchedTags: [TagsModelsContractsTagResponse]? = nil, totalResults: Int? = nil, useTotalResults: Bool? = nil) {
        self.authors = authors
        self.availablePages = availablePages
        self.groups = groups
        self.hasMore = hasMore
        self.polls = polls
        self.query = query
        self.recruitmentDetails = recruitmentDetails
        self.relatedPosts = relatedPosts
        self.replacementContinuationToken = replacementContinuationToken
        self.results = results
        self.searchedTags = searchedTags
        self.totalResults = totalResults
        self.useTotalResults = useTotalResults
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        authors = try container.decodeArrayIfPresent("authors")
        availablePages = try container.decodeIfPresent("availablePages")
        groups = try container.decodeArrayIfPresent("groups")
        hasMore = try container.decodeIfPresent("hasMore")
        polls = try container.decodeArrayIfPresent("polls")
        query = try container.decodeIfPresent("query")
        recruitmentDetails = try container.decodeArrayIfPresent("recruitmentDetails")
        relatedPosts = try container.decodeArrayIfPresent("relatedPosts")
        replacementContinuationToken = try container.decodeIfPresent("replacementContinuationToken")
        results = try container.decodeArrayIfPresent("results")
        searchedTags = try container.decodeArrayIfPresent("searchedTags")
        totalResults = try container.decodeIfPresent("totalResults")
        useTotalResults = try container.decodeIfPresent("useTotalResults")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(authors, forKey: "authors")
        try container.encodeIfPresent(availablePages, forKey: "availablePages")
        try container.encodeIfPresent(groups, forKey: "groups")
        try container.encodeIfPresent(hasMore, forKey: "hasMore")
        try container.encodeIfPresent(polls, forKey: "polls")
        try container.encodeIfPresent(query, forKey: "query")
        try container.encodeIfPresent(recruitmentDetails, forKey: "recruitmentDetails")
        try container.encodeIfPresent(relatedPosts, forKey: "relatedPosts")
        try container.encodeIfPresent(replacementContinuationToken, forKey: "replacementContinuationToken")
        try container.encodeIfPresent(results, forKey: "results")
        try container.encodeIfPresent(searchedTags, forKey: "searchedTags")
        try container.encodeIfPresent(totalResults, forKey: "totalResults")
        try container.encodeIfPresent(useTotalResults, forKey: "useTotalResults")
    }

    public static func == (lhs: ForumPostSearchResponse, rhs: ForumPostSearchResponse) -> Bool {
        guard lhs.authors == rhs.authors else { return false }
        guard lhs.availablePages == rhs.availablePages else { return false }
        guard lhs.groups == rhs.groups else { return false }
        guard lhs.hasMore == rhs.hasMore else { return false }
        guard lhs.polls == rhs.polls else { return false }
        guard lhs.query == rhs.query else { return false }
        guard lhs.recruitmentDetails == rhs.recruitmentDetails else { return false }
        guard lhs.relatedPosts == rhs.relatedPosts else { return false }
        guard lhs.replacementContinuationToken == rhs.replacementContinuationToken else { return false }
        guard lhs.results == rhs.results else { return false }
        guard lhs.searchedTags == rhs.searchedTags else { return false }
        guard lhs.totalResults == rhs.totalResults else { return false }
        guard lhs.useTotalResults == rhs.useTotalResults else { return false }
        return true
    }
}
