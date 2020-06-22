//
//  GuildUpgrade.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/18/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//lang, id, ids
public struct GuildUpgrade: Decodable {
    public let id: Int
    public let name: String
    public let description: String
    public let type: String
    public let icon: String
    public let build_time: Int
    public let required_level: Int
    public let experience: Int
    public let prerequisites: [Int]
    public let costs: [GuildUpgradeCost]
    
    public let bag_max_items: Int?
    public let bag_max_coins: Int?
}

public struct GuildUpgradeCost: Decodable {
    public let type: String
    public let name: String
    public let count: Int
    public let item_id: Int?
}
