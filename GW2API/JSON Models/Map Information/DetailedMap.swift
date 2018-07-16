//
//  DetailedMap.swift
//  GW2API
//
//  Created by Zhendryk on 7/12/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

struct DetailedMap : Decodable {
    let name: String
    let min_level: Int
    let max_level: Int
    let default_floor: Int
    let label_coord: [Int]?
    let map_rect: [[Int]]
    let continent_rect: [[Int]]
    let points_of_interest: [String:POI]
    let tasks: [String:Task]
    let sectors: [String:Sector]
    let adventures: [MapAdventure]
    let id: Int
    let mastery_points: [MapMasteryPoint]
    let skill_challenges: [MapSkillChallenge]
    
    struct MapMasteryPoint : Decodable {
        let coord: [Float]
        let id: Int
        let region: String
        
    }
    
    struct MapSkillChallenge : Decodable {
        let coord: [Float]
        let id: String
    }
    
    struct MapAdventure : Decodable {
        let coord: [Float]
        let name: String
        let id: String
        let description: String
    }
}
