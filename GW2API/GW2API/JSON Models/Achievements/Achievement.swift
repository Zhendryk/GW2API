//
//  Achievement.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/20/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct Achievement: Decodable {
    let id: Int
    let icon: String?
    let name: String
    let description: String
    let requirement: String
    let locked_text: String
    let type: String
    let flags: [String]
    let tiers: [tier]
    let prerequisites: [Int]?
    let rewards: [reward]?
    let bits: [bit]?
    let point_cap: Int?
}

struct tier: Decodable {
    let count: Int
    let points: Int
}

struct reward: Decodable {
    let type: String
    
    //If type = "coins" || "item"
    let count: Int?
    
    //If type = "item" || "mastery" || "title"
    let id: Int?
    
    //If type = "mastery"
    let region: String?
}

struct bit: Decodable {
    let type: String
    let id: Int?
    let text: String?
}
