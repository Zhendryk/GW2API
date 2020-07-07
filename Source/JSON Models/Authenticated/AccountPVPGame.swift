//
//  AccountPVPGame.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct AccountPVPGame: Decodable, Identifiable {
    public let id: String
    public let map_id: Int
    public let started: String
    public let ended: String
    public let result: String
    public let team: String
    public let profession: String
    public let scores: Scores
    public let rating_type: String
    public let rating_change: Int?
    public let season: String?
}
