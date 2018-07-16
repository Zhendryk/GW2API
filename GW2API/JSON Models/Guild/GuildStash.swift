//
//  GuildStash.swift
//  GW2API
//
//  Created by Zhendryk on 4/19/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct GuildStash: Decodable {
    let upgrade_id: Int
    let size: Int
    let coins: Int
    let note: String
    let inventory: [inventoryItem?]
}

public struct inventoryItem: Decodable {
    let id: Int
    let count: Int
}
