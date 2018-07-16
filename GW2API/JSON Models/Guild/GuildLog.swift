//
//  GuildLog.swift
//  GW2API
//
//  Created by Zhendryk on 4/19/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct GuildLog: Decodable {
    public let id: Int
    public let time: String
    public let user: String
    public let type: String
    
    public let joined: String?
    public let invited: invited?
    public let kick: kick?
    public let rank_change: rankChange?
    public let treasury: treasury?
    public let stash: stash?
    public let motd: String?
    public let upgrade: upgrade?
}

public struct invited: Decodable {
    public let invited_by: String
}

public struct kick: Decodable {
    public let kicked_by: String
}

public struct rankChange: Decodable {
    public let changed_by: String
    public let old_rank: String
    public let new_rank: String
}

public struct treasury: Decodable {
    public let item_id: Int
    public let count: Int
}

public struct stash: Decodable {
    public let operation: String
    public let item_id: Int
    public let count: Int
    public let coins: Int
}

public struct upgrade: Decodable {
    public let action: String
    public let upgrade_id: Int
    public let count: Int?
    public let recipe_id: Int?
}
