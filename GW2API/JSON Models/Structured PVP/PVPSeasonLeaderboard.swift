//
//  PVPSeasonLeaderboard.swift
//  GW2API
//
//  Created by Zhendryk on 7/11/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//pvp/seasons/leaderboards
//lang
public struct PVPSeasonLeaderboard : Decodable {
    public let name: String
    public let rank: Int
    public let id: String?
    public let team: String?
    public let team_id: Int?
    public let date: String
    public let scores: [pvpSeasonLeaderboardScore]
    
    public struct pvpSeasonLeaderboardScore : Decodable {
        public let id: String
        public let value: Int
    }
}
