//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension BungieNetAPI.Core {

    /** Gets any active global alert for display in the forum banners, help pages, etc. Usually used for DOC alerts. */
    public enum GetGlobalAlerts {

        public static let service = APIService<Response>(id: ".GetGlobalAlerts", tag: "Core", method: "GET", path: "/GlobalAlerts/", hasBody: false)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Determines whether Streaming Alerts are included in results */
                public var includestreaming: Bool?

                public init(includestreaming: Bool? = nil) {
                    self.includestreaming = includestreaming
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetGlobalAlerts.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(includestreaming: Bool? = nil) {
                let options = Options(includestreaming: includestreaming)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let includestreaming = options.includestreaming {
                  params["includestreaming"] = includestreaming
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Gets any active global alert for display in the forum banners, help pages, etc. Usually used for DOC alerts. */
            public struct Status200: APIModel {

                public var detailedErrorTrace: String?

                public var errorCode: Int?

                public var errorStatus: String?

                public var message: String?

                public var messageData: [String: String]?

                public var response: [GlobalAlert]?

                public var throttleSeconds: Int?

                public init(detailedErrorTrace: String? = nil, errorCode: Int? = nil, errorStatus: String? = nil, message: String? = nil, messageData: [String: String]? = nil, response: [GlobalAlert]? = nil, throttleSeconds: Int? = nil) {
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
