//
//  GuildEmblem.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct GuildEmblem: Decodable {
    let id: Int
    let layers: [String]
}
