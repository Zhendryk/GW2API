//
//  GuildTeam.swift
//  GW2API
//
//  Created by Zhendryk on 4/19/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct GuildTeam: Decodable {
    let id: Int
    let members: [Member]
    let name: String
    let aggregate: Aggregate
    let ladders: Ladders
    let games: [Game]
    let seasons: [Season]
    
    public struct Member: Decodable {
        let name: String
        let role: String
    }
    
    public struct Game: Decodable {
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
    
    public struct Season: Decodable {
        let id: String
        let wins: Int
        let losses: Int
        let rating: Int
    }
}

public struct Aggregate: Decodable {
    let wins: Int
    let losses: Int
    let desertions: Int
    let byes: Int
    let forfeits: Int
}

public struct Ladders: Decodable {
    let ranked: Aggregate
    let unranked: Aggregate
}

public struct Scores: Decodable {
    let red: Int
    let blue: Int
}
