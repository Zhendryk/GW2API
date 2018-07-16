//
//  GuildRank.swift
//  GW2API
//
//  Created by Zhendryk on 4/19/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

struct GuildRank: Decodable {
    let id: String
    let order: Int
    let permissions: [String]
    let icon: String
}
