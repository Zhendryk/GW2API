//
//  ItemStats.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//itemstats
//lang, id, ids
struct ItemStats : Decodable {
    let id: Int
    let name: String
    let attributes: [ItemStatsAttribute]
    
    struct ItemStatsAttribute : Decodable {
        let attribute: String
        let multiplier: Float
        let value: Int
    }
}
