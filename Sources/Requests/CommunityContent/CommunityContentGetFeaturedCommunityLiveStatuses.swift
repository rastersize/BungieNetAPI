//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension BungieNetAPI.CommunityContent {

    /** Returns info about Featured live streams. */
    public enum CommunityContentGetFeaturedCommunityLiveStatuses {

        public static let service = APIService<Response>(id: "CommunityContent.GetFeaturedCommunityLiveStatuses", tag: "CommunityContent", method: "GET", path: "/CommunityContent/Live/Featured/{partnershipType}/{sort}/{page}/", hasBody: false)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Zero based page. */
                public var page: Int

                /** The type of partnership for which the status should be returned. */
                public var partnershipType: Int

                /** The sort mode. */
                public var sort: Int

                /** The locale for streams you'd like to see. Don't pass this to fall back on your BNet locale. Pass 'ALL' to not filter by locale. */
                public var streamLocale: String?

                public init(page: Int, partnershipType: Int, sort: Int, streamLocale: String? = nil) {
                    self.page = page
                    self.partnershipType = partnershipType
                    self.sort = sort
                    self.streamLocale = streamLocale
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: CommunityContentGetFeaturedCommunityLiveStatuses.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(page: Int, partnershipType: Int, sort: Int, streamLocale: String? = nil) {
                let options = Options(page: page, partnershipType: partnershipType, sort: sort, streamLocale: streamLocale)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "page" + "}", with: "\(self.options.page)").replacingOccurrences(of: "{" + "partnershipType" + "}", with: "\(self.options.partnershipType)").replacingOccurrences(of: "{" + "sort" + "}", with: "\(self.options.sort)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let streamLocale = options.streamLocale {
                  params["streamLocale"] = streamLocale
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Returns info about Featured live streams. */
            public struct Status200: APIModel {

                public var detailedErrorTrace: String?

                public var errorCode: Int?

                public var errorStatus: String?

                public var message: String?

                public var messageData: [String: String]?

                public var response: SearchResultOfCommunityLiveStatus?

                public var throttleSeconds: Int?

                public init(detailedErrorTrace: String? = nil, errorCode: Int? = nil, errorStatus: String? = nil, message: String? = nil, messageData: [String: String]? = nil, response: SearchResultOfCommunityLiveStatus? = nil, throttleSeconds: Int? = nil) {
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
