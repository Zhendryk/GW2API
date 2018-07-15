//
//  EPVP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/13/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

enum EPVP {
    case pvp
    case ranks
    case seasons
    case seasonLeaderboardsLadder
    case seasonLeaderboardsLegendary
    case seasonLeaderboardsGuild
}

extension EPVP : Endpoint {
    var path: String {
        switch self {
        case .pvp: return "pvp"
        case .ranks: return "pvp/ranks"
        case .seasons: return "pvp/seasons"
        case .seasonLeaderboardsLadder: return "pvp/seasons/:seasonID/leaderboards/ladder"
        case .seasonLeaderboardsLegendary: return "pvp/seasons/:seasonID/leaderboards/legendary"
        case .seasonLeaderboardsGuild: return "pvp/seasons/:seasonID/leaderboards/guild"
        }
    }
}
