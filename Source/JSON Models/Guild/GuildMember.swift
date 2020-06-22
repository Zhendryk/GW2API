//
//  GuildMember.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct GuildMember: Decodable {
    public let name: String
    public let rank: String
    public let joined: String
}
