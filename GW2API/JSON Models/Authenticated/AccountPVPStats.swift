//
//  AccountPVPStats.swift
//  GW2API
//
//  Created by Zhendryk on 4/21/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct AccountPVPStats: Decodable {
    let pvp_rank: Int
    let pvp_rank_points: Int
    let pvp_rank_rollovers: Int
    let aggregate: Aggregate
    let professions: Professions
    let ladders: Ladders
    
    public struct Professions: Decodable {
        let elementalist: Aggregate?
        let ranger: Aggregate?
        let necromancer: Aggregate?
        let engineer: Aggregate?
        let revenant: Aggregate?
        let warrior: Aggregate?
        let thief: Aggregate?
        let mesmer: Aggregate?
        let guardian: Aggregate?
    }
}


