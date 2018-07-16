//
//  Achievement.swift
//  GW2API
//
//  Created by Zhendryk on 4/20/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//achievements
//lang, id, ids
struct Achievement: Decodable {
    let id: Int
    let icon: String?
    let name: String
    let description: String
    let requirement: String
    let locked_text: String
    let type: String
    let flags: [String]
    let tiers: [AchievementTier]
    let prerequisites: [Int]?
    let rewards: [AchievementReward]?
    let bits: [AchievementBit]?
    let point_cap: Int?
    
    struct AchievementTier: Decodable {
        let count: Int
        let points: Int
    }
    
    struct AchievementReward: Decodable {
        let type: String
        
        //If type = "coins" || "item"
        let count: Int?
        
        //If type = "item" || "mastery" || "title"
        let id: Int?
        
        //If type = "mastery"
        let region: String?
    }
    
    struct AchievementBit: Decodable {
        let type: String
        let id: Int?
        let text: String?
    }
}
