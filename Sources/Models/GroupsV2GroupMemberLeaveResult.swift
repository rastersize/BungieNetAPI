//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct GroupsV2GroupMemberLeaveResult: APIModel {

    public var group: GroupsV2GroupV2?

    public var groupDeleted: Bool?

    public init(group: GroupsV2GroupV2? = nil, groupDeleted: Bool? = nil) {
        self.group = group
        self.groupDeleted = groupDeleted
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        group = try container.decodeIfPresent("group")
        groupDeleted = try container.decodeIfPresent("groupDeleted")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(group, forKey: "group")
        try container.encodeIfPresent(groupDeleted, forKey: "groupDeleted")
    }

    public static func == (lhs: GroupsV2GroupMemberLeaveResult, rhs: GroupsV2GroupMemberLeaveResult) -> Bool {
        guard lhs.group == rhs.group else { return false }
        guard lhs.groupDeleted == rhs.groupDeleted else { return false }
        return true
    }
}
