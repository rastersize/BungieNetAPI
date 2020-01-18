//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** These properties are an attempt to categorize talent node steps by certain common properties. See the related enumerations for the type of properties being categorized. */
public struct DestinyDefinitionsDestinyTalentNodeStepGroups: APIModel {

    public var damageTypes: Int?

    public var guardianAttributes: Int?

    public var impactEffects: Int?

    public var lightAbilities: Int?

    public var weaponPerformance: Int?

    public init(damageTypes: Int? = nil, guardianAttributes: Int? = nil, impactEffects: Int? = nil, lightAbilities: Int? = nil, weaponPerformance: Int? = nil) {
        self.damageTypes = damageTypes
        self.guardianAttributes = guardianAttributes
        self.impactEffects = impactEffects
        self.lightAbilities = lightAbilities
        self.weaponPerformance = weaponPerformance
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        damageTypes = try container.decodeIfPresent("damageTypes")
        guardianAttributes = try container.decodeIfPresent("guardianAttributes")
        impactEffects = try container.decodeIfPresent("impactEffects")
        lightAbilities = try container.decodeIfPresent("lightAbilities")
        weaponPerformance = try container.decodeIfPresent("weaponPerformance")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(damageTypes, forKey: "damageTypes")
        try container.encodeIfPresent(guardianAttributes, forKey: "guardianAttributes")
        try container.encodeIfPresent(impactEffects, forKey: "impactEffects")
        try container.encodeIfPresent(lightAbilities, forKey: "lightAbilities")
        try container.encodeIfPresent(weaponPerformance, forKey: "weaponPerformance")
    }

    public static func == (lhs: DestinyDefinitionsDestinyTalentNodeStepGroups, rhs: DestinyDefinitionsDestinyTalentNodeStepGroups) -> Bool {
        guard lhs.damageTypes == rhs.damageTypes else { return false }
        guard lhs.guardianAttributes == rhs.guardianAttributes else { return false }
        guard lhs.impactEffects == rhs.impactEffects else { return false }
        guard lhs.lightAbilities == rhs.lightAbilities else { return false }
        guard lhs.weaponPerformance == rhs.weaponPerformance else { return false }
        return true
    }
}