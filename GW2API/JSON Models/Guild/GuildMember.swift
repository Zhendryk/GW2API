//
//  GuildMember.swift
//  GW2API
//
//  Created by Zhendryk on 4/19/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct GuildMember: Decodable {
    public let name: String
    public let rank: String
    public let joined: String
}
