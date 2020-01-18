//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** An enumeration that indicates the high-level "type" of the item, attempting to iron out the context specific differences for specific instances of an entity. For instance, though a weapon may be of various weapon "Types", in DestinyItemType they are all classified as "Weapon". This allows for better filtering on a higher level of abstraction for the concept of types.
 This enum is provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a "best guess" fit.
 NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
 I keep updating these because they're so damn convenient. I guess I shouldn't fight it. */
/** An enumeration that indicates the high-level "type" of the item, attempting to iron out the context specific differences for specific instances of an entity. For instance, though a weapon may be of various weapon "Types", in DestinyItemType they are all classified as "Weapon". This allows for better filtering on a higher level of abstraction for the concept of types.
 This enum is provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a "best guess" fit.
 NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
 I keep updating these because they're so damn convenient. I guess I shouldn't fight it. */
public enum DestinyDestinyItemType: Int, Codable, Equatable, CaseIterable {
    case _0 = 0
    case _1 = 1
    case _2 = 2
    case _3 = 3
    case _7 = 7
    case _8 = 8
    case _9 = 9
    case _10 = 10
    case _11 = 11
    case _12 = 12
    case _13 = 13
    case _14 = 14
    case _15 = 15
    case _16 = 16
    case _17 = 17
    case _18 = 18
    case _19 = 19
    case _20 = 20
    case _21 = 21
    case _22 = 22
    case _23 = 23
    case _24 = 24
    case _25 = 25
    case _26 = 26
    case _27 = 27
    case _28 = 28
    case _29 = 29
}