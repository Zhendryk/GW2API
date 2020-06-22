//
//  GuildRank.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct GuildRank: Decodable {
    public let id: String
    public let order: Int
    public let permissions: [String]
    public let icon: String
}
