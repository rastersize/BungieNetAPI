//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ForumPollResult: APIModel {

    public var answerSlot: Int?

    public var answerText: String?

    public var lastVoteDate: DateTime?

    public var requestingUserVoted: Bool?

    public var votes: Int?

    public init(answerSlot: Int? = nil, answerText: String? = nil, lastVoteDate: DateTime? = nil, requestingUserVoted: Bool? = nil, votes: Int? = nil) {
        self.answerSlot = answerSlot
        self.answerText = answerText
        self.lastVoteDate = lastVoteDate
        self.requestingUserVoted = requestingUserVoted
        self.votes = votes
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        answerSlot = try container.decodeIfPresent("answerSlot")
        answerText = try container.decodeIfPresent("answerText")
        lastVoteDate = try container.decodeIfPresent("lastVoteDate")
        requestingUserVoted = try container.decodeIfPresent("requestingUserVoted")
        votes = try container.decodeIfPresent("votes")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(answerSlot, forKey: "answerSlot")
        try container.encodeIfPresent(answerText, forKey: "answerText")
        try container.encodeIfPresent(lastVoteDate, forKey: "lastVoteDate")
        try container.encodeIfPresent(requestingUserVoted, forKey: "requestingUserVoted")
        try container.encodeIfPresent(votes, forKey: "votes")
    }

    public static func == (lhs: ForumPollResult, rhs: ForumPollResult) -> Bool {
        guard lhs.answerSlot == rhs.answerSlot else { return false }
        guard lhs.answerText == rhs.answerText else { return false }
        guard lhs.lastVoteDate == rhs.lastVoteDate else { return false }
        guard lhs.requestingUserVoted == rhs.requestingUserVoted else { return false }
        guard lhs.votes == rhs.votes else { return false }
        return true
    }
}