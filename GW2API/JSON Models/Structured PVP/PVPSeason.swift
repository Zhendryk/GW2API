//
//  PVPSeason.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//pvp/seasons
//lang
struct PVPSeason : Decodable {
    let id: String
    let name: Int
    let start: String
    let end: String
    let active: Bool
    let divisions: [PVPDivision]
    let leaderboards: [PVPLeaderboard]
    
    struct PVPDivision : Decodable {
        let name: String
        let flags: [String]
        let large_icon: String
        let small_icon: String
        let pip_icon: String
        let tiers: [PVPTier]
    }
    
    struct PVPLeaderboard : Decodable {
        let ladder: PVPLeaderboardLadder
        let scorings: [PVPLeaderboardScoring]
        
        struct PVPLeaderboardLadder : Decodable {
            let settings: PVPLBLadderSettings
            
            struct PVPLBLadderSettings : Decodable {
                let name: String
                let duration: Int
                let scoring: String
                let tiers: [PVPLBLadderTier]
                
                struct PVPLBLadderTier : Decodable {
                    let range: [Int]
                }
            }
        }
        
        struct PVPLeaderboardScoring : Decodable {
            let id: String
            let type: String
            let description: String
            let name: String
            let ordering: String
        }
    }
    
    struct PVPTier : Decodable {
        let points: Int
    }
}
