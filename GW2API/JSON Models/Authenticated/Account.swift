//
//  Account.swift
//  GW2API
//
//  Created by Zhendryk on 3/17/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//account
//access_token
public struct Account: Decodable {
    let id: String
    let age: Int
    let name: String
    let world: Int
    let guilds: [String]
    let guild_leader: [String]
    let created: String
    let access: [String]
    let commander: Bool
    let fractal_level: Int
    let daily_ap: Int
    let monthly_ap: Int
    let wvw_rank: Int
}
