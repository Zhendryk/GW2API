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
    public let pve: [Daily]
    public let pvp: [Daily]
    public let wvw: [Daily]
    public let fractals: [Daily]
    public let special: [Daily]
    
    public struct Daily: Decodable {
        public let id: Int
        public let level: DailyLevel
        public let required_access: [String]
        
        public struct DailyLevel: Decodable {
            public let min: Int
            public let max: Int
        }
    }
}
