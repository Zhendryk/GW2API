//
//  DetailedMap.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/12/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct DetailedMap : Decodable, Identifiable {
    public let name: String
    public let min_level: Int
    public let max_level: Int
    public let default_floor: Int
    public let label_coord: [Int]?
    public let map_rect: [[Int]]
    public let continent_rect: [[Int]]
    public let points_of_interest: [String:POI]
    public let tasks: [String:Task]
    public let sectors: [String:Sector]
    public let adventures: [MapAdventure]
    public let id: Int
    public let mastery_points: [MapMasteryPoint]
    public let skill_challenges: [MapSkillChallenge]
    
    public struct MapMasteryPoint : Decodable, Identifiable {
        public let coord: [Float]
        public let id: Int
        public let region: String
        
    }
    
    public struct MapSkillChallenge : Decodable, Identifiable {
        public let coord: [Float]
        public let id: String
    }
    
    public struct MapAdventure : Decodable, Identifiable {
        public let coord: [Float]
        public let name: String
        public let id: String
        public let description: String
    }
}
