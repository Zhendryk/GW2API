//
//  AccountPVPGame.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct AccountPVPGame: Decodable {
    let id: String
    let map_id: Int
    let started: String
    let ended: String
    let result: String
    let team: String
    let profession: String
    let scores: scores
    let rating_type: String
    let rating_change: Int
    let season: String?
}
