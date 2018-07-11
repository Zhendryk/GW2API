//
//  GuildTeam.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct GuildTeam: Decodable {
    let id: Int
    let members: [Member]
    let name: String
    let aggregate: Aggregate
    let ladders: Ladders
    let games: [Game]
    let seasons: [Season]
    
    struct Member: Decodable {
        let name: String
        let role: String
    }
    
    struct Game: Decodable {
        let id: String
        let map_id: Int
        let started: String
        let ended: String
        let result: String
        let team: String
        let scores: Scores
        let rating_type: String
        let rating_change: Int
        let season: String?
    }
    
    struct Scores: Decodable {
        let red: Int
        let blue: Int
    }
    
    struct Season: Decodable {
        let id: String
        let wins: Int
        let losses: Int
        let rating: Int
    }
}

struct Aggregate: Decodable {
    let wins: Int
    let losses: Int
    let desertions: Int
    let byes: Int
    let forfeits: Int
}

struct Ladders: Decodable {
    let ranked: Aggregate
    let unranked: Aggregate
}
