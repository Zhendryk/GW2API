//
//  WVWMatchStats.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/14/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct WVWMatchStats : Decodable {
    let id: String
    let deaths: [String:Int]
    let kills: [String:Int]
    let maps: [WVWStatsMap]
    
    struct WVWStatsMap : Decodable {
        let id: Int
        let type: String
        let deaths: [String:Int]
        let kills: [String:Int]
    }
}
