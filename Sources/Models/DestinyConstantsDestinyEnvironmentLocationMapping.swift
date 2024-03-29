//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct DestinyConstantsDestinyEnvironmentLocationMapping: APIModel {

    /** A hint that the UI uses to figure out how this location is activated by the player. */
    public var activationSource: String?

    /** If this is populated, this is the activity you have to be playing in order to see this location appear because of this mapping. (theoretically, a location can have multiple mappings, and some might require you to be in a specific activity when others don't) */
    public var activityHash: Int?

    /** If this is populated, it is the item that you must possess for this location to be active because of this mapping. (theoretically, a location can have multiple mappings, and some might require an item while others don't) */
    public var itemHash: Int?

    /** The location that is revealed on the director by this mapping. */
    public var locationHash: Int?

    /** If this is populated, this is an objective related to the location. */
    public var objectiveHash: Int?

    public init(activationSource: String? = nil, activityHash: Int? = nil, itemHash: Int? = nil, locationHash: Int? = nil, objectiveHash: Int? = nil) {
        self.activationSource = activationSource
        self.activityHash = activityHash
        self.itemHash = itemHash
        self.locationHash = locationHash
        self.objectiveHash = objectiveHash
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        activationSource = try container.decodeIfPresent("activationSource")
        activityHash = try container.decodeIfPresent("activityHash")
        itemHash = try container.decodeIfPresent("itemHash")
        locationHash = try container.decodeIfPresent("locationHash")
        objectiveHash = try container.decodeIfPresent("objectiveHash")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(activationSource, forKey: "activationSource")
        try container.encodeIfPresent(activityHash, forKey: "activityHash")
        try container.encodeIfPresent(itemHash, forKey: "itemHash")
        try container.encodeIfPresent(locationHash, forKey: "locationHash")
        try container.encodeIfPresent(objectiveHash, forKey: "objectiveHash")
    }

    public static func == (lhs: DestinyConstantsDestinyEnvironmentLocationMapping, rhs: DestinyConstantsDestinyEnvironmentLocationMapping) -> Bool {
        guard lhs.activationSource == rhs.activationSource else { return false }
        guard lhs.activityHash == rhs.activityHash else { return false }
        guard lhs.itemHash == rhs.itemHash else { return false }
        guard lhs.locationHash == rhs.locationHash else { return false }
        guard lhs.objectiveHash == rhs.objectiveHash else { return false }
        return true
    }
}
