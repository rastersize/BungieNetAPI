//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyAdvancedAwaAuthorizationResult: APIModel {

    /** Credential used to prove the user authorized an advanced write action. */
    public var actionToken: String?

    /** Message to the app developer to help understand the response. */
    public var developerNote: String?

    /** This token may be used to perform the requested action this number of times, at a maximum. If this value is 0, then there is no limit. */
    public var maximumNumberOfUses: Int?

    /** MembershipType from the permission request. */
    public var membershipType: Int?

    public var responseReason: Int?

    /** Advanced Write Action Type from the permission request. */
    public var type: Int?

    /** Indication of how the user responded to the request. If the value is "Approved" the actionToken will contain the token that can be presented when performing the advanced write action. */
    public var userSelection: Int?

    /** Time, UTC, when token expires. */
    public var validUntil: DateTime?

    public init(actionToken: String? = nil, developerNote: String? = nil, maximumNumberOfUses: Int? = nil, membershipType: Int? = nil, responseReason: Int? = nil, type: Int? = nil, userSelection: Int? = nil, validUntil: DateTime? = nil) {
        self.actionToken = actionToken
        self.developerNote = developerNote
        self.maximumNumberOfUses = maximumNumberOfUses
        self.membershipType = membershipType
        self.responseReason = responseReason
        self.type = type
        self.userSelection = userSelection
        self.validUntil = validUntil
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        actionToken = try container.decodeIfPresent("actionToken")
        developerNote = try container.decodeIfPresent("developerNote")
        maximumNumberOfUses = try container.decodeIfPresent("maximumNumberOfUses")
        membershipType = try container.decodeIfPresent("membershipType")
        responseReason = try container.decodeIfPresent("responseReason")
        type = try container.decodeIfPresent("type")
        userSelection = try container.decodeIfPresent("userSelection")
        validUntil = try container.decodeIfPresent("validUntil")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(actionToken, forKey: "actionToken")
        try container.encodeIfPresent(developerNote, forKey: "developerNote")
        try container.encodeIfPresent(maximumNumberOfUses, forKey: "maximumNumberOfUses")
        try container.encodeIfPresent(membershipType, forKey: "membershipType")
        try container.encodeIfPresent(responseReason, forKey: "responseReason")
        try container.encodeIfPresent(type, forKey: "type")
        try container.encodeIfPresent(userSelection, forKey: "userSelection")
        try container.encodeIfPresent(validUntil, forKey: "validUntil")
    }

    public static func == (lhs: DestinyAdvancedAwaAuthorizationResult, rhs: DestinyAdvancedAwaAuthorizationResult) -> Bool {
        guard lhs.actionToken == rhs.actionToken else { return false }
        guard lhs.developerNote == rhs.developerNote else { return false }
        guard lhs.maximumNumberOfUses == rhs.maximumNumberOfUses else { return false }
        guard lhs.membershipType == rhs.membershipType else { return false }
        guard lhs.responseReason == rhs.responseReason else { return false }
        guard lhs.type == rhs.type else { return false }
        guard lhs.userSelection == rhs.userSelection else { return false }
        guard lhs.validUntil == rhs.validUntil else { return false }
        return true
    }
}
