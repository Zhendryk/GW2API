//
//  PVPSeasonLeaderboard.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/11/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//pvp/seasons/leaderboards
//lang
struct PVPSeasonLeaderboard : Decodable {
    let name: String
    let rank: Int
    let id: String
    let team: String?
    let team_id: Int?
    let date: String
    let scores: [pvpSeasonLeaderboardScore]
    
    struct pvpSeasonLeaderboardScore : Decodable {
        let id: String
        let value: Int
    }
}
