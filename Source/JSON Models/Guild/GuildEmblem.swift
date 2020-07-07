//
//  GuildEmblem.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//emblem
//id, ids
public struct GuildEmblem: Decodable, Identifiable {
    public let id: Int
    public let layers: [String]
}
