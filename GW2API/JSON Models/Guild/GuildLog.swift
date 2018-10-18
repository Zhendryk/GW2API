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
    
    public let invited_by: String?
    
    public let kicked_by: String?
    
    public let changed_by: String?
    public let old_rank: String?
    public let new_rank: String?
    
    public let item_id: Int?
    public let count: Int?
    
    public let operation: String?
    public let coins: String?
    
    public let action: String?
    public let upgrade_id: String?
    public let recipe_id: Int?

    public let motd: String?
}
