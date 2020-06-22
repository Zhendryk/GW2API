//
//  Account.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//account
//access_token
public struct Account: Decodable {
    public let id: String
    public let age: Int
    public let name: String
    public let world: Int
    public let guilds: [String]
    public let guild_leader: [String]
    public let created: String
    public let access: [String]
    public let commander: Bool
    public let fractal_level: Int
    public let daily_ap: Int
    public let monthly_ap: Int
    public let wvw_rank: Int
}
