//
//  EGuild.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

enum EGuild {
    case id
    case emblem
    case foregrounds
    case backgrounds
    case permissions
    case search
    case upgrades
    
    //Authenticated
    case log
    case members
    case ranks
    case stash
    case treasury
    case teams
    case authUpgrades
}

extension EGuild : Endpoint {
    var path: String {
        switch self {
        case .id: return "guild/:id"
        case .emblem: return "emblem"
        case .foregrounds: return "emblem/foregrounds"
        case .backgrounds: return "emblem/backgrounds"
        case .permissions: return "guild/permissions"
        case .search: return "guild/search"
        case .upgrades: return "guild/upgrades"
        case .log: return "guild/:id/log"
        case .members: return "guild/:id/members"
        case .ranks: return "guild/:id/ranks"
        case .stash: return "guild/:id/stash"
        case .treasury: return "guild/:id/treasury"
        case .teams: return "guild/:id/teams"
        case .authUpgrades: return "guild/:id/upgrades"
        }
    }
}
