//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyAdvancedAwaInitializeResponse: APIModel {

    /** ID used to get the token. Present this ID to the user as it will identify this specific request on their device. */
    public var correlationId: String?

    /** True if the PUSH message will only be sent to the device that made this request. */
    public var sentToSelf: Bool?

    public init(correlationId: String? = nil, sentToSelf: Bool? = nil) {
        self.correlationId = correlationId
        self.sentToSelf = sentToSelf
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        correlationId = try container.decodeIfPresent("correlationId")
        sentToSelf = try container.decodeIfPresent("sentToSelf")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(correlationId, forKey: "correlationId")
        try container.encodeIfPresent(sentToSelf, forKey: "sentToSelf")
    }

    public static func == (lhs: DestinyAdvancedAwaInitializeResponse, rhs: DestinyAdvancedAwaInitializeResponse) -> Bool {
        guard lhs.correlationId == rhs.correlationId else { return false }
        guard lhs.sentToSelf == rhs.sentToSelf else { return false }
        return true
    }
}
