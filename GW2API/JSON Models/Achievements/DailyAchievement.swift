//
//  DailyAchievement.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/20/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct DailyAchievement: Decodable {
    let pve: [daily]
    let pvp: [daily]
    let wvw: [daily]
    let fractals: [daily]
    let special: [daily]
}

struct daily: Decodable {
    let id: Int
    let level: level
    let required_access: [String]
}

struct level: Decodable {
    let min: Int
    let max: Int
}
