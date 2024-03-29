//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct GroupsV2GroupBan: APIModel {

    public var bungieNetUserInfo: UserUserInfoCard?

    public var comment: String?

    public var createdBy: UserUserInfoCard?

    public var dateBanned: DateTime?

    public var dateExpires: DateTime?

    public var destinyUserInfo: GroupsV2GroupUserInfoCard?

    public var groupId: Int?

    public var lastModifiedBy: UserUserInfoCard?

    public init(bungieNetUserInfo: UserUserInfoCard? = nil, comment: String? = nil, createdBy: UserUserInfoCard? = nil, dateBanned: DateTime? = nil, dateExpires: DateTime? = nil, destinyUserInfo: GroupsV2GroupUserInfoCard? = nil, groupId: Int? = nil, lastModifiedBy: UserUserInfoCard? = nil) {
        self.bungieNetUserInfo = bungieNetUserInfo
        self.comment = comment
        self.createdBy = createdBy
        self.dateBanned = dateBanned
        self.dateExpires = dateExpires
        self.destinyUserInfo = destinyUserInfo
        self.groupId = groupId
        self.lastModifiedBy = lastModifiedBy
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        bungieNetUserInfo = try container.decodeIfPresent("bungieNetUserInfo")
        comment = try container.decodeIfPresent("comment")
        createdBy = try container.decodeIfPresent("createdBy")
        dateBanned = try container.decodeIfPresent("dateBanned")
        dateExpires = try container.decodeIfPresent("dateExpires")
        destinyUserInfo = try container.decodeIfPresent("destinyUserInfo")
        groupId = try container.decodeIfPresent("groupId")
        lastModifiedBy = try container.decodeIfPresent("lastModifiedBy")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(bungieNetUserInfo, forKey: "bungieNetUserInfo")
        try container.encodeIfPresent(comment, forKey: "comment")
        try container.encodeIfPresent(createdBy, forKey: "createdBy")
        try container.encodeIfPresent(dateBanned, forKey: "dateBanned")
        try container.encodeIfPresent(dateExpires, forKey: "dateExpires")
        try container.encodeIfPresent(destinyUserInfo, forKey: "destinyUserInfo")
        try container.encodeIfPresent(groupId, forKey: "groupId")
        try container.encodeIfPresent(lastModifiedBy, forKey: "lastModifiedBy")
    }

    public static func == (lhs: GroupsV2GroupBan, rhs: GroupsV2GroupBan) -> Bool {
        guard lhs.bungieNetUserInfo == rhs.bungieNetUserInfo else { return false }
        guard lhs.comment == rhs.comment else { return false }
        guard lhs.createdBy == rhs.createdBy else { return false }
        guard lhs.dateBanned == rhs.dateBanned else { return false }
        guard lhs.dateExpires == rhs.dateExpires else { return false }
        guard lhs.destinyUserInfo == rhs.destinyUserInfo else { return false }
        guard lhs.groupId == rhs.groupId else { return false }
        guard lhs.lastModifiedBy == rhs.lastModifiedBy else { return false }
        return true
    }
}
