//
//  GuildTeam.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct GuildTeam: Decodable, Identifiable {
    public let id: Int
    public let members: [Member]
    public let name: String
    public let state: String
    public let aggregate: Aggregate
    public let ladders: Ladders
    public let games: [Game]
    public let seasons: [Season]?
    
    public struct Member: Decodable {
        public let name: String
        public let role: String
    }
    
    public struct Game: Decodable, Identifiable {
        public let id: String
        public let map_id: Int
        public let started: String
        public let ended: String
        public let result: String
        public let team: String
        public let scores: Scores
        public let rating_type: String
        public let rating_change: Int
        public let season: String?
    }
    
    public struct Season: Decodable, Identifiable {
        public let id: String
        public let wins: Int
        public let losses: Int
        public let rating: Int
    }
}

public struct Aggregate: Decodable {
    public let wins: Int
    public let losses: Int
    public let desertions: Int
    public let byes: Int
    public let forfeits: Int
}

public struct Ladders: Decodable {
    public let ranked: Aggregate?
    public let unranked: Aggregate?
}

public struct Scores: Decodable {
    public let red: Int
    public let blue: Int
}
