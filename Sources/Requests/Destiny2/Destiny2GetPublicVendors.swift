//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension BungieNetAPI.Destiny2 {

    /** Get items available from vendors where the vendors have items for sale that are common for everyone. If any portion of the Vendor's available inventory is character or account specific, we will be unable to return their data from this endpoint due to the way that available inventory is computed. As I am often guilty of saying: 'It's a long story...' */
    public enum Destiny2GetPublicVendors {

        public static let service = APIService<Response>(id: "Destiny2.GetPublicVendors", tag: "Destiny2", method: "GET", path: "/Destiny2//Vendors/", hasBody: false)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results. */
                public var components: [Int]?

                public init(components: [Int]? = nil) {
                    self.components = components
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: Destiny2GetPublicVendors.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(components: [Int]? = nil) {
                let options = Options(components: components)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let components = options.components?.map({ String(describing: $0) }).joined(separator: ",") {
                  params["components"] = components
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Get items available from vendors where the vendors have items for sale that are common for everyone. If any portion of the Vendor's available inventory is character or account specific, we will be unable to return their data from this endpoint due to the way that available inventory is computed. As I am often guilty of saying: 'It's a long story...' */
            public struct Status200: APIModel {

                public var detailedErrorTrace: String?

                public var errorCode: Int?

                public var errorStatus: String?

                public var message: String?

                public var messageData: [String: String]?

                public var response: DestinyResponsesDestinyPublicVendorsResponse?

                public var throttleSeconds: Int?

                public init(detailedErrorTrace: String? = nil, errorCode: Int? = nil, errorStatus: String? = nil, message: String? = nil, messageData: [String: String]? = nil, response: DestinyResponsesDestinyPublicVendorsResponse? = nil, throttleSeconds: Int? = nil) {
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

            /** A response containing all valid components for the public Vendors endpoint.
 It is a decisively smaller subset of data compared to what we can get when we know the specific user making the request.
 If you want any of the other data - item details, whether or not you can buy it, etc... you'll have to call in the context of a character. I know, sad but true. */
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
