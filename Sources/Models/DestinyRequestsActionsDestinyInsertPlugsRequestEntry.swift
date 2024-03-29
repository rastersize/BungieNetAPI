//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Represents all of the data related to a single plug to be inserted.
Note that, while you *can* point to a socket that represents infusion, you will receive an error if you attempt to do so. Come on guys, let's play nice. */
public struct DestinyRequestsActionsDestinyInsertPlugsRequestEntry: APIModel {

    /** Plugs are never instanced (except in infusion). So with the hash alone, we should be able to: 1) Infer whether the player actually needs to have the item, or if it's a reusable plug 2) Perform any operation needed to use the Plug, including removing the plug item and running reward sheets. */
    public var plugItemHash: Int?

    /** This property, combined with the socketIndex, tells us which socket we are referring to (since operations can be performed on both Intrinsic and "default" sockets, and they occupy different arrays in the Inventory Item Definition). I know, I know. Don't give me that look. */
    public var socketArrayType: Int?

    /** The index into the socket array, which identifies the specific socket being operated on. We also need to know the socketArrayType in order to uniquely identify the socket.
Don't point to or try to insert a plug into an infusion socket. It won't work. */
    public var socketIndex: Int?

    public init(plugItemHash: Int? = nil, socketArrayType: Int? = nil, socketIndex: Int? = nil) {
        self.plugItemHash = plugItemHash
        self.socketArrayType = socketArrayType
        self.socketIndex = socketIndex
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        plugItemHash = try container.decodeIfPresent("plugItemHash")
        socketArrayType = try container.decodeIfPresent("socketArrayType")
        socketIndex = try container.decodeIfPresent("socketIndex")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(plugItemHash, forKey: "plugItemHash")
        try container.encodeIfPresent(socketArrayType, forKey: "socketArrayType")
        try container.encodeIfPresent(socketIndex, forKey: "socketIndex")
    }

    public static func == (lhs: DestinyRequestsActionsDestinyInsertPlugsRequestEntry, rhs: DestinyRequestsActionsDestinyInsertPlugsRequestEntry) -> Bool {
        guard lhs.plugItemHash == rhs.plugItemHash else { return false }
        guard lhs.socketArrayType == rhs.socketArrayType else { return false }
        guard lhs.socketIndex == rhs.socketIndex else { return false }
        return true
    }
}
