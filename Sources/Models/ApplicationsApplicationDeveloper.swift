//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ApplicationsApplicationDeveloper: APIModel {

    public var apiEulaVersion: Int?

    public var role: Int?

    public var user: UserUserInfoCard?

    public init(apiEulaVersion: Int? = nil, role: Int? = nil, user: UserUserInfoCard? = nil) {
        self.apiEulaVersion = apiEulaVersion
        self.role = role
        self.user = user
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        apiEulaVersion = try container.decodeIfPresent("apiEulaVersion")
        role = try container.decodeIfPresent("role")
        user = try container.decodeIfPresent("user")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(apiEulaVersion, forKey: "apiEulaVersion")
        try container.encodeIfPresent(role, forKey: "role")
        try container.encodeIfPresent(user, forKey: "user")
    }

    public static func == (lhs: ApplicationsApplicationDeveloper, rhs: ApplicationsApplicationDeveloper) -> Bool {
        guard lhs.apiEulaVersion == rhs.apiEulaVersion else { return false }
        guard lhs.role == rhs.role else { return false }
        guard lhs.user == rhs.user else { return false }
        return true
    }
}
