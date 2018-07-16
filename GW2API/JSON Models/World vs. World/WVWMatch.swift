//
//  WVWMatch.swift
//  GW2API
//
//  Created by Zhendryk on 7/11/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//wvw/matches
//world, id, ids
//Possible to add /overview, /scores or /stats to this endpoint for more info
struct WVWMatch : Decodable {
    let id: String
    let start_time: String
    let end_time: String
    let scores: [String:Int]
    let worlds: [String:Int]
    let all_worlds: [String:[Int]]
    let deaths: [String:Int]
    let kills: [String:Int]
    let maps: [WVWMap]
    
    struct WVWMap : Decodable {
        let id: Int
        let type: String
        let scores: [String:Int]
        let kills: [String:Int]
        let deaths: [String:Int]
        let objectives: [WVWMapObjective]
        let bonuses: [WVWMapBonus]
        let skirmishes: [WVWMapSkirmish]?
        let victory_points: [String:Int]?
        
        struct WVWMapObjective : Decodable {
            let id: String
            let owner: String
            let last_flipped: String
            let claimed_by: String?
            let claimed_at: String?
            let points_tick: Int
            let points_capture: Int
            let guild_upgrades: [Int]?
            let yaks_delivered: Int?
        }
        
        struct WVWMapBonus : Decodable {
            let type: String
            let owner: String
        }
    }
}

struct WVWMapSkirmish : Decodable {
    let id: Int
    let scores: [String:Int]
    let map_scores: [WVWSkirmishMapScore]
    
    struct WVWSkirmishMapScore : Decodable {
        let type: String
        let scores: [String:Int]
    }
}
