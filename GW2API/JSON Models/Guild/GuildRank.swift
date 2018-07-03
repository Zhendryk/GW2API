//
//  GuildRank.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct GuildRank: Decodable {
    let id: String
    let order: Int
    let permissions: [String]
    let icon: String
}
