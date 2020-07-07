//
//  PVPSeasonLeaderboard.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/11/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//pvp/seasons/leaderboards
//lang
public struct PVPSeasonLeaderboard : Decodable, Identifiable {
    public let name: String
    public let rank: Int
    public let id: String?
    public let team: String?
    public let team_id: Int?
    public let date: String
    public let scores: [pvpSeasonLeaderboardScore]
    
    public struct pvpSeasonLeaderboardScore : Decodable, Identifiable {
        public let id: String
        public let value: Int
    }
}
