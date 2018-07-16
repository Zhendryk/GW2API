//
//  GuildEmblem.swift
//  GW2API
//
//  Created by Zhendryk on 4/19/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//emblem
//id, ids
public struct GuildEmblem: Decodable {
    let id: Int
    let layers: [String]
}
