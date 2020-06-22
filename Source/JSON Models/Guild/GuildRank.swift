//
//  GuildRank.swift
//  GW2API
//
//  Created by Zhendryk on 4/19/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct GuildRank: Decodable {
    public let id: String
    public let order: Int
    public let permissions: [String]
    public let icon: String
}
