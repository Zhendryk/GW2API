//
//  GuildLog.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct GuildLog: Decodable {
    let id: Int
    let time: String
    let user: String
    let type: String
    
    let joined: String?
    let invited: invited?
    let kick: kick?
    let rank_change: rankChange?
    let treasury: treasury?
    let stash: stash?
    let motd: String?
    let upgrade: upgrade?
}

struct invited: Decodable {
    let invited_by: String
}

struct kick: Decodable {
    let kicked_by: String
}

struct rankChange: Decodable {
    let changed_by: String
    let old_rank: String
    let new_rank: String
}

struct treasury: Decodable {
    let item_id: Int
    let count: Int
}

struct stash: Decodable {
    let operation: String
    let item_id: Int
    let count: Int
    let coins: Int
}

struct upgrade: Decodable {
    let action: String
    let upgrade_id: Int
    let count: Int?
    let recipe_id: Int?
}
