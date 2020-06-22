//
//  GuildStash.swift
//  GW2API
//
//  Created by Zhendryk on 4/19/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct GuildStash: Decodable {
    public let upgrade_id: Int
    public let size: Int
    public let coins: Int
    public let note: String
    public let inventory: [inventoryItem?]
}

public struct inventoryItem: Decodable {
    public let id: Int
    public let count: Int
}
