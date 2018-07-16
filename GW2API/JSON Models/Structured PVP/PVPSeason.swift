//
//  PVPSeason.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//pvp/seasons
//lang
public struct PVPSeason : Decodable {
    let id: String
    let name: String
    let start: String
    let end: String
    let active: Bool
    let divisions: [PVPDivision]
    let leaderboards: [String:PVPLeaderboard]
    
    public struct PVPDivision : Decodable {
        let name: String
        let flags: [String]
        let large_icon: String
        let small_icon: String
        let pip_icon: String
        let tiers: [PVPTier]
    }
    
    public struct PVPLeaderboard : Decodable {
        let settings: PVPLeaderboardSettings
        let scorings: [PVPLeaderboardScoring]

            
        public struct PVPLeaderboardSettings : Decodable {
            let name: String
            let duration: Int?
            let scoring: String
            let tiers: [PVPLBLadderTier]
            
            public struct PVPLBLadderTier : Decodable {
                let range: [Float]
            }
        }
        
        public struct PVPLeaderboardScoring : Decodable {
            let id: String
            let type: String
            let description: String
            let name: String
            let ordering: String
        }
    }
    
    public struct PVPTier : Decodable {
        let points: Int
    }
}
