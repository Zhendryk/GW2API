//
//  GuildUpgrade.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/18/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//lang, id, ids
struct GuildUpgrade: Decodable {
    let id: Int
    let name: String
    let description: String
    let type: String
    let icon: String
    let build_time: Int
    let required_level: Int
    let experience: Int
    let prerequisites: [Int]
    let costs: [GuildUpgradeCost]
    
    let bag_max_items: Int?
    let bag_max_coins: Int?
}

struct GuildUpgradeCost: Decodable {
    let type: String
    let name: String
    let count: Int
    let item_id: Int?
}
