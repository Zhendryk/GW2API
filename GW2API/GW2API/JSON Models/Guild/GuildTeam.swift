//
//  GuildTeam.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation


public struct GuildTeam: Decodable {
    let id: Int
    let members: [member]
    let name: String
    let aggregate: aggregate
    let ladders: ladders
    let games: [game]
    let seasons: [season]
}

struct member: Decodable {
    let name: String
    let role: String
}

struct aggregate: Decodable {
    let wins: Int
    let losses: Int
    let desertions: Int
    let byes: Int
    let forfeits: Int
}

struct ladders: Decodable {
    let ranked: aggregate
    let unranked: aggregate
}

struct game: Decodable {
    let id: String
    let map_id: Int
    let started: String
    let ended: String
    let result: String
    let team: String
    let scores: scores
    let rating_type: String
    let rating_change: Int
    let season: String?
}

struct scores: Decodable {
    let red: Int
    let blue: Int
}

struct season: Decodable {
    let id: String
    let wins: Int
    let losses: Int
    let rating: Int
}
