//
//  GuildDetails.swift
//  GW2API
//
//  Created by Zhendryk on 4/19/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct GuildDetails: Decodable {
    let level: Int?
    let motd: String?
    let influence: Int?
    let aetherium: String?
    let favor: Int?
    let id: String
    let name: String
    let tag: String
    let emblem: emblem
    let flags: [String]?
}

public struct emblem: Decodable {
    let background: background
    let foreground: foreground
}

public struct background: Decodable {
    let id: Int
    let colors: [Int]
}

public struct foreground: Decodable {
    let id: Int
    let colors: [Int]
}
