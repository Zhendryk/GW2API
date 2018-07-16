//
//  GuildTreasury.swift
//  GW2API
//
//  Created by Zhendryk on 4/19/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

struct GuildTreasury: Decodable {
    let item_id: Int
    let count: Int
    let needed_by: [NeededItem]
}

struct NeededItem: Decodable {
    let upgrade_id: Int
    let count: Int
}
