//
//  WVWMatchStats.swift
//  GW2API
//
//  Created by Zhendryk on 7/14/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct WVWMatchStats : Decodable {
    let id: String
    let deaths: [String:Int]
    let kills: [String:Int]
    let maps: [WVWStatsMap]
    
    public struct WVWStatsMap : Decodable {
        let id: Int
        let type: String
        let deaths: [String:Int]
        let kills: [String:Int]
    }
}
