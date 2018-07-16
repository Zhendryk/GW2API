//
//  AccountPVPStats.swift
//  GW2API
//
//  Created by Zhendryk on 4/21/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct AccountPVPStats: Decodable {
    public let pvp_rank: Int
    public let pvp_rank_points: Int
    public let pvp_rank_rollovers: Int
    public let aggregate: Aggregate
    public let professions: Professions
    public let ladders: Ladders
    
    public struct Professions: Decodable {
        public let elementalist: Aggregate?
        public let ranger: Aggregate?
        public let necromancer: Aggregate?
        public let engineer: Aggregate?
        public let revenant: Aggregate?
        public let warrior: Aggregate?
        public let thief: Aggregate?
        public let mesmer: Aggregate?
        public let guardian: Aggregate?
    }
}


