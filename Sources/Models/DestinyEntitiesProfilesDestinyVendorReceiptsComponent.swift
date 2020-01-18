//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** For now, this isn't used for much: it's a record of the recent refundable purchases that the user has made. In the future, it could be used for providing refunds/buyback via the API. Wouldn't that be fun? */
public struct DestinyEntitiesProfilesDestinyVendorReceiptsComponent: APIModel {

    /** The receipts for refundable purchases made at a vendor. */
    public var receipts: [DestinyVendorsDestinyVendorReceipt]?

    public init(receipts: [DestinyVendorsDestinyVendorReceipt]? = nil) {
        self.receipts = receipts
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        receipts = try container.decodeArrayIfPresent("receipts")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(receipts, forKey: "receipts")
    }

    public static func == (lhs: DestinyEntitiesProfilesDestinyVendorReceiptsComponent, rhs: DestinyEntitiesProfilesDestinyVendorReceiptsComponent) -> Bool {
        guard lhs.receipts == rhs.receipts else { return false }
        return true
    }
}
