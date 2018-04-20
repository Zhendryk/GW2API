//
//  GuildDetails.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct GuildDetails: Decodable {
    let level: Int
    let motd: String
    let influence: Int
    let aetherium: String
    let favor: Int
    let id: String
    let name: String
    let tag: String
    let emblem: String
    let background: background
    let foreground: foreground
    let flags: [String]?
}

struct background: Decodable {
    let id: Int
    let colors: [Int]
}

struct foreground: Decodable {
    let id: Int
    let colors: [Int]
}
