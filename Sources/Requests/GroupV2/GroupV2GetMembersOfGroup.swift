//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension BungieNetAPI.GroupV2 {

    /** Get the list of members in a given group. */
    public enum GroupV2GetMembersOfGroup {

        public static let service = APIService<Response>(id: "GroupV2.GetMembersOfGroup", tag: "GroupV2", method: "GET", path: "/GroupV2/{groupId}/Members/", hasBody: false)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Page number (starting with 1). Each page has a fixed size of 50 items per page. */
                public var currentpage: Int

                /** The ID of the group. */
                public var groupId: Int

                /** Filter out other member types. Use None for all members. */
                public var memberType: Int?

                /** The name fragment upon which a search should be executed for members with matching display or unique names. */
                public var nameSearch: String?

                public init(currentpage: Int, groupId: Int, memberType: Int? = nil, nameSearch: String? = nil) {
                    self.currentpage = currentpage
                    self.groupId = groupId
                    self.memberType = memberType
                    self.nameSearch = nameSearch
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GroupV2GetMembersOfGroup.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(currentpage: Int, groupId: Int, memberType: Int? = nil, nameSearch: String? = nil) {
                let options = Options(currentpage: currentpage, groupId: groupId, memberType: memberType, nameSearch: nameSearch)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "currentpage" + "}", with: "\(self.options.currentpage)").replacingOccurrences(of: "{" + "groupId" + "}", with: "\(self.options.groupId)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let memberType = options.memberType {
                  params["memberType"] = memberType
                }
                if let nameSearch = options.nameSearch {
                  params["nameSearch"] = nameSearch
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Get the list of members in a given group. */
            public struct Status200: APIModel {

                public var detailedErrorTrace: String?

                public var errorCode: Int?

                public var errorStatus: String?

                public var message: String?

                public var messageData: [String: String]?

                public var response: SearchResultOfGroupMember?

                public var throttleSeconds: Int?

                public init(detailedErrorTrace: String? = nil, errorCode: Int? = nil, errorStatus: String? = nil, message: String? = nil, messageData: [String: String]? = nil, response: SearchResultOfGroupMember? = nil, throttleSeconds: Int? = nil) {
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
