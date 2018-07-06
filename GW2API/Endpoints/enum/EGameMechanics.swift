//
//  EGameMechanics.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/6/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

enum EGameMechanics {
    case masteries
    case outfits
    case pets
    case professions
    case races
    case specializations
    case skills
    case traits
    case legends
}

extension EGameMechanics : Endpoint {
    var path: String {
        switch self {
        case .masteries: return "masteries"
        case .outfits: return "outfits"
        case .pets: return "pets"
        case .professions: return "professions"
        case .races: return "races"
        case .specializations: return "specializations"
        case .skills: return "skills"
        case .traits: return "traits"
        case .legends: return "legends"
        }
    }
}
