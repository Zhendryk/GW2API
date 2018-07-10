//
//  PVPRank.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct PVPRank : Decodable {
    let id: Int
    let finisher_id: Int
    let name: String
    let icon: String
    let min_rank: Int
    let max_rank: Int
    let levels: [pvpLevel]
    
    struct pvpLevel : Decodable {
        let min_rank: Int
        let max_rank: Int
        let points: Int
    }
}
