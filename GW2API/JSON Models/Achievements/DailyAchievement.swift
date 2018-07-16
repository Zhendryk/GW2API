//
//  DailyAchievement.swift
//  GW2API
//
//  Created by Zhendryk on 4/20/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//achievements/daily
//id, ids
public struct DailyAchievement: Decodable {
    let pve: [Daily]
    let pvp: [Daily]
    let wvw: [Daily]
    let fractals: [Daily]
    let special: [Daily]
    
    public struct Daily: Decodable {
        let id: Int
        let level: DailyLevel
        let required_access: [String]
        
        public struct DailyLevel: Decodable {
            let min: Int
            let max: Int
        }
    }
}
