//
//  GuildStash.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public struct GuildStash: Decodable {
    let upgrade_id: Int
    let size: Int
    let coins: Int
    let note: String
    let inventory: [inventoryItem?]
}

struct inventoryItem: Decodable {
    let id: Int
    let count: Int
}
