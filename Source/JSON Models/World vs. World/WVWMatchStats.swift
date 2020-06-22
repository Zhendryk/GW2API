//
//  WVWMatchStats.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/14/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct WVWMatchStats : Decodable {
    public let id: String
    public let deaths: [String:Int]
    public let kills: [String:Int]
    public let maps: [WVWStatsMap]
    
    public struct WVWStatsMap : Decodable {
        public let id: Int
        public let type: String
        public let deaths: [String:Int]
        public let kills: [String:Int]
    }
}
