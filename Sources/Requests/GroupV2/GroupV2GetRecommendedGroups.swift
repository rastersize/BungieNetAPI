//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension BungieNetAPI.GroupV2 {

    /** Gets groups recommended for you based on the groups to whom those you follow belong. */
    public enum GroupV2GetRecommendedGroups {

        public static let service = APIService<Response>(id: "GroupV2.GetRecommendedGroups", tag: "GroupV2", method: "POST", path: "/GroupV2/Recommended/{groupType}/{createDateRange}/", hasBody: false, securityRequirement: SecurityRequirement(type: "oauth2", scopes: ["ReadGroups"]))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Requested range in which to pull recommended groups */
                public var createDateRange: Int

                /** Type of groups requested */
                public var groupType: Int

                public init(createDateRange: Int, groupType: Int) {
                    self.createDateRange = createDateRange
                    self.groupType = groupType
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GroupV2GetRecommendedGroups.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(createDateRange: Int, groupType: Int) {
                let options = Options(createDateRange: createDateRange, groupType: groupType)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "createDateRange" + "}", with: "\(self.options.createDateRange)").replacingOccurrences(of: "{" + "groupType" + "}", with: "\(self.options.groupType)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Gets groups recommended for you based on the groups to whom those you follow belong. */
            public struct Status200: APIModel {

                public var detailedErrorTrace: String?

                public var errorCode: Int?

                public var errorStatus: String?

                public var message: String?

                public var messageData: [String: String]?

                public var response: [GroupsV2GroupV2Card]?

                public var throttleSeconds: Int?

                public init(detailedErrorTrace: String? = nil, errorCode: Int? = nil, errorStatus: String? = nil, message: String? = nil, messageData: [String: String]? = nil, response: [GroupsV2GroupV2Card]? = nil, throttleSeconds: Int? = nil) {
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
                    response = try container.decodeArrayIfPresent("Response")
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
