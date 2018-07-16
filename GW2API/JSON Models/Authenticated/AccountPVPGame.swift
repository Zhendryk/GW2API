//
//  AccountPVPGame.swift
//  GW2API
//
//  Created by Zhendryk on 4/21/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

struct AccountPVPGame: Decodable {
    let id: String
    let map_id: Int
    let started: String
    let ended: String
    let result: String
    let team: String
    let profession: String
    let scores: Scores
    let rating_type: String
    let rating_change: Int
    let season: String?
}
