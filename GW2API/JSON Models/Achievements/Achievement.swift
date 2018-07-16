//
//  Achievement.swift
//  GW2API
//
//  Created by Zhendryk on 4/20/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//achievements
//lang, id, ids
public struct Achievement: Decodable {
    public let id: Int
    public let icon: String?
    public let name: String
    public let description: String
    public let requirement: String
    public let locked_text: String
    public let type: String
    public let flags: [String]
    public let tiers: [AchievementTier]
    public let prerequisites: [Int]?
    public let rewards: [AchievementReward]?
    public let bits: [AchievementBit]?
    public let point_cap: Int?
    
    public struct AchievementTier: Decodable {
        public let count: Int
        public let points: Int
    }
    
    public struct AchievementReward: Decodable {
        public let type: String
        
        //If type = "coins" || "item"
        public let count: Int?
        
        //If type = "item" || "mastery" || "title"
        public let id: Int?
        
        //If type = "mastery"
        public let region: String?
    }
    
    public struct AchievementBit: Decodable {
        public let type: String
        public let id: Int?
        public let text: String?
    }
}
