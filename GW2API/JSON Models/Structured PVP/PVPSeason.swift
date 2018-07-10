//
//  PVPSeason.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct PVPSeason : Decodable {
    let id: String
    let name: Int
    let start: String
    let end: String
    let active: Bool
    let divisions: [pvpDivision]
    let leaderboards: [pvpLeaderboard]
    
    struct pvpDivision : Decodable {
        let name: String
        let flags: [String]
        let large_icon: String
        let small_icon: String
        let pip_icon: String
        let tiers: [pvpTier]
    }
    
    struct pvpLeaderboard : Decodable {
        let ladder: pvpLeaderboardLadder
        let scorings: [pvpLeaderboardScoring]
        
        struct pvpLeaderboardLadder : Decodable {
            let settings: pvpLBLadderSettings
            struct pvpLBLadderSettings : Decodable {
                let name: String
                let duration: Int
                let scoring: String
                //more to do here...
            }
        }
        
        struct pvpLeaderboardScoring : Decodable {
            //fill in here...
        }
    }
    
    struct pvpTier : Decodable {
        let points: Int
    }
}
