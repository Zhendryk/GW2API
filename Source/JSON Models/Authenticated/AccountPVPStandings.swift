//
//  AccountPVPStandings.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct AccountPVPStandings: Decodable {
    public let current: CurrentStandings
    public let best: BestStandings
    public let season_id: String
    
    public struct CurrentStandings: Decodable {
        public let total_points: Int
        public let division: Int
        public let tier: Int
        public let points: Int
        public let repeats: Int
        public let rating: Int?
        public let decay: Int?
    }
    
    public struct BestStandings: Decodable {
        public let total_points: Int
        public let division: Int
        public let tier: Int
        public let points: Int
        public let repeats: Int
    }
}
