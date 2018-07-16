//
//  GuildTreasury.swift
//  GW2API
//
//  Created by Zhendryk on 4/19/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct GuildTreasury: Decodable {
    public let item_id: Int
    public let count: Int
    public let needed_by: [NeededItem]
}

public struct NeededItem: Decodable {
    public let upgrade_id: Int
    public let count: Int
}
