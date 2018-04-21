//
//  AccountPVPStandings.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct AccountPVPStandings: Decodable {
    let current: CurrentStandings
    let best: BestStandings
    let season_id: String
}

struct CurrentStandings: Decodable {
    let total_points: Int
    let division: Int
    let tier: Int
    let points: Int
    let repeats: Int
    let rating: Int
    let decay: Int
}

struct BestStandings: Decodable {
    let total_points: Int
    let division: Int
    let tier: Int
    let points: Int
    let repeats: Int
}
