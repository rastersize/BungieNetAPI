//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension BungieNetAPI.Destiny2 {

    /** Gets historical stats for indicated character. */
    public enum Destiny2GetHistoricalStats {

        public static let service = APIService<Response>(id: "Destiny2.GetHistoricalStats", tag: "Destiny2", method: "GET", path: "/Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/", hasBody: false)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The id of the character to retrieve. You can omit this character ID or set it to 0 to get aggregate stats across all characters. */
                public var characterId: Int

                /** Last day to return when daily stats are requested. Use the format YYYY-MM-DD. Currently, we cannot allow more than 31 days of daily data to be requested in a single request. */
                public var dayend: DateTime?

                /** First day to return when daily stats are requested. Use the format YYYY-MM-DD. Currently, we cannot allow more than 31 days of daily data to be requested in a single request. */
                public var daystart: DateTime?

                /** The Destiny membershipId of the user to retrieve. */
                public var destinyMembershipId: Int

                /** Group of stats to include, otherwise only general stats are returned. Comma separated list is allowed. Values: General, Weapons, Medals */
                public var groups: [Int]?

                /** A valid non-BungieNet membership type. */
                public var membershipType: Int

                /** Game modes to return. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited. */
                public var modes: [Int]?

                /** Indicates a specific period type to return. Optional. May be: Daily, AllTime, or Activity */
                public var periodType: Int?

                public init(characterId: Int, dayend: DateTime? = nil, daystart: DateTime? = nil, destinyMembershipId: Int, groups: [Int]? = nil, membershipType: Int, modes: [Int]? = nil, periodType: Int? = nil) {
                    self.characterId = characterId
                    self.dayend = dayend
                    self.daystart = daystart
                    self.destinyMembershipId = destinyMembershipId
                    self.groups = groups
                    self.membershipType = membershipType
                    self.modes = modes
                    self.periodType = periodType
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: Destiny2GetHistoricalStats.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(characterId: Int, dayend: DateTime? = nil, daystart: DateTime? = nil, destinyMembershipId: Int, groups: [Int]? = nil, membershipType: Int, modes: [Int]? = nil, periodType: Int? = nil) {
                let options = Options(characterId: characterId, dayend: dayend, daystart: daystart, destinyMembershipId: destinyMembershipId, groups: groups, membershipType: membershipType, modes: modes, periodType: periodType)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "characterId" + "}", with: "\(self.options.characterId)").replacingOccurrences(of: "{" + "destinyMembershipId" + "}", with: "\(self.options.destinyMembershipId)").replacingOccurrences(of: "{" + "membershipType" + "}", with: "\(self.options.membershipType)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let dayend = options.dayend?.encode() {
                  params["dayend"] = dayend
                }
                if let daystart = options.daystart?.encode() {
                  params["daystart"] = daystart
                }
                if let groups = options.groups?.map({ String(describing: $0) }).joined(separator: ",") {
                  params["groups"] = groups
                }
                if let modes = options.modes?.map({ String(describing: $0) }).joined(separator: ",") {
                  params["modes"] = modes
                }
                if let periodType = options.periodType {
                  params["periodType"] = periodType
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Gets historical stats for indicated character. */
            public struct Status200: APIModel {

                public var detailedErrorTrace: String?

                public var errorCode: Int?

                public var errorStatus: String?

                public var message: String?

                public var messageData: [String: String]?

                public var response: [String: DestinyHistoricalStatsDestinyHistoricalStatsByPeriod]?

                public var throttleSeconds: Int?

                public init(detailedErrorTrace: String? = nil, errorCode: Int? = nil, errorStatus: String? = nil, message: String? = nil, messageData: [String: String]? = nil, response: [String: DestinyHistoricalStatsDestinyHistoricalStatsByPeriod]? = nil, throttleSeconds: Int? = nil) {
                    self.detailedErrorTrace = detailedErrorTrace
                    self.errorCode = errorCode
                    self.errorStatus = errorStatus
                    self.message = message
                    self.messageData = messageData
                    self.response = response
                    self.throttleSeconds = throttleSeconds
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    detailedErrorTrace = try container.decodeIfPresent("DetailedErrorTrace")
                    errorCode = try container.decodeIfPresent("ErrorCode")
                    errorStatus = try container.decodeIfPresent("ErrorStatus")
                    message = try container.decodeIfPresent("Message")
                    messageData = try container.decodeIfPresent("MessageData")
                    response = try container.decodeIfPresent("Response")
                    throttleSeconds = try container.decodeIfPresent("ThrottleSeconds")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(detailedErrorTrace, forKey: "DetailedErrorTrace")
                    try container.encodeIfPresent(errorCode, forKey: "ErrorCode")
                    try container.encodeIfPresent(errorStatus, forKey: "ErrorStatus")
                    try container.encodeIfPresent(message, forKey: "Message")
                    try container.encodeIfPresent(messageData, forKey: "MessageData")
                    try container.encodeIfPresent(response, forKey: "Response")
                    try container.encodeIfPresent(throttleSeconds, forKey: "ThrottleSeconds")
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    guard lhs.detailedErrorTrace == rhs.detailedErrorTrace else { return false }
                    guard lhs.errorCode == rhs.errorCode else { return false }
                    guard lhs.errorStatus == rhs.errorStatus else { return false }
                    guard lhs.message == rhs.message else { return false }
                    guard lhs.messageData == rhs.messageData else { return false }
                    guard lhs.response == rhs.response else { return false }
                    guard lhs.throttleSeconds == rhs.throttleSeconds else { return false }
                    return true
                }
            }
            public typealias SuccessType = Status200

            /** Look at the Response property for more information about the nature of this response */
            case status200(Status200)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
