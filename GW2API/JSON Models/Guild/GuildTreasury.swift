//
//  GuildTreasury.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct GuildTreasury: Decodable {
    let item_id: Int
    let count: Int
    let needed_by: [itemNeeded]
}

struct itemNeeded: Decodable {
    let upgrade_id: Int
    let count: Int
}
