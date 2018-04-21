//
//  AccountPVPStats.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct AccountPVPStats: Decodable {
    let pvp_rank: Int
    let pvp_rank_points: Int
    let pvp_rank_rollovers: Int
    let aggregate: aggregate
    let professions: professions
    let ladders: ladders
}

struct professions: Decodable {
    let elementalist: aggregate?
    let ranger: aggregate?
    let necromancer: aggregate?
    let engineer: aggregate?
    let revenant: aggregate?
    let warrior: aggregate?
    let thief: aggregate?
    let mesmer: aggregate?
    let guardian: aggregate?
}
