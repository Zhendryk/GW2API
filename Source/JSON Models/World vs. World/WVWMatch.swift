//
//  WVWMatch.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/11/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//wvw/matches
//world, id, ids
//Possible to add /overview, /scores or /stats to this endpoint for more info
public struct WVWMatch : Decodable, Identifiable {
    public let id: String
    public let start_time: String
    public let end_time: String
    public let scores: [String:Int]
    public let worlds: [String:Int]
    public let all_worlds: [String:[Int]]
    public let deaths: [String:Int]
    public let kills: [String:Int]
    public let maps: [WVWMap]
    
    public struct WVWMap : Decodable, Identifiable {
        public let id: Int
        public let type: String
        public let scores: [String:Int]
        public let kills: [String:Int]
        public let deaths: [String:Int]
        public let objectives: [WVWMapObjective]
        public let bonuses: [WVWMapBonus]
        public let skirmishes: [WVWMapSkirmish]?
        public let victory_points: [String:Int]?
        
        public struct WVWMapObjective : Decodable, Identifiable {
            public let id: String
            public let owner: String
            public let last_flipped: String
            public let claimed_by: String?
            public let claimed_at: String?
            public let points_tick: Int
            public let points_capture: Int
            public let guild_upgrades: [Int]?
            public let yaks_delivered: Int?
        }
        
        public struct WVWMapBonus : Decodable {
            public let type: String
            public let owner: String
        }
    }
}

public struct WVWMapSkirmish : Decodable, Identifiable {
    public let id: Int
    public let scores: [String:Int]
    public let map_scores: [WVWSkirmishMapScore]
    
    public struct WVWSkirmishMapScore : Decodable {
        public let type: String
        public let scores: [String:Int]
    }
}
