//
//  PVPRank.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//pvp/ranks
//lang, ids
struct PVPRank : Decodable {
    let id: Int
    let finisher_id: Int
    let name: String
    let icon: String
    let min_rank: Int
    let max_rank: Int
    let levels: [PVPLevel]
    
    struct PVPLevel : Decodable {
        let min_rank: Int
        let max_rank: Int
        let points: Int
    }
}
