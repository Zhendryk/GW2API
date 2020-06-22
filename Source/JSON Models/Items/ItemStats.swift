//
//  ItemStats.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//itemstats
//lang, id, ids
public struct ItemStats : Decodable {
    public let id: Int
    public let name: String
    public let attributes: [ItemStatsAttribute]
    
    public struct ItemStatsAttribute : Decodable {
        public let attribute: String
        public let multiplier: Float
        public let value: Int
    }
}
