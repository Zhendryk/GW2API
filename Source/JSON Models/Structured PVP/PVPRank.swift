//
//  PVPRank.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//pvp/ranks
//lang, ids
public struct PVPRank : Decodable, Identifiable {
    public let id: Int
    public let finisher_id: Int
    public let name: String
    public let icon: String
    public let min_rank: Int
    public let max_rank: Int
    public let levels: [PVPLevel]
    
    public struct PVPLevel : Decodable {
        public let min_rank: Int
        public let max_rank: Int
        public let points: Int
    }
}
