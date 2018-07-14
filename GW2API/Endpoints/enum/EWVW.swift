//
//  EWVW.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/14/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

enum EWVW {
    case abilities
    case matches
    case matchOverview
    case matchScores
    case matchStats
    case objectives
    case ranks
    case upgrades
}

extension EWVW : Endpoint {
    var path: String {
        switch self {
        case .abilities: return "wvw/abilties"
        case .matches: return "wvw/matches"
        case .matchOverview: return "wvw/matches/overview"
        case .matchScores: return "wvw/matches/scores"
        case .matchStats: return "wvw/matches/stats"
        case .objectives: return "wvw/objectives"
        case .ranks: return "wvw/ranks"
        case .upgrades: return "wvw/upgrades"
        }
    }
}
