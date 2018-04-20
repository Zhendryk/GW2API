//
//  GuildMember.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct GuildMember: Decodable {
    let name: String
    let rank: String
    let joined: String
}
