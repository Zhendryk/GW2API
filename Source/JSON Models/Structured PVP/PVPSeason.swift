//
//  PVPSeason.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//pvp/seasons
//lang
public struct PVPSeason : Decodable, Identifiable {
    public let id: String
    public let name: String
    public let start: String
    public let end: String
    public let active: Bool
    public let divisions: [PVPDivision]
    public let leaderboards: [String:PVPLeaderboard]
    
    public struct PVPDivision : Decodable {
        public let name: String
        public let flags: [String]
        public let large_icon: String
        public let small_icon: String
        public let pip_icon: String
        public let tiers: [PVPTier]
    }
    
    public struct PVPLeaderboard : Decodable {
        public let settings: PVPLeaderboardSettings
        public let scorings: [PVPLeaderboardScoring]

            
        public struct PVPLeaderboardSettings : Decodable {
            public let name: String
            public let duration: Int?
            public let scoring: String
            public let tiers: [PVPLBLadderTier]
            
            public struct PVPLBLadderTier : Decodable {
                public let range: [Float]
            }
        }
        
        public struct PVPLeaderboardScoring : Decodable, Identifiable {
            public let id: String
            public let type: String
            public let description: String
            public let name: String
            public let ordering: String
        }
    }
    
    public struct PVPTier : Decodable {
        public let points: Int
    }
}
