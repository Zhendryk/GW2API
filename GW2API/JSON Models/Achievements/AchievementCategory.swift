//
//  AchievementCategory.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/20/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//achievements/categories
//lang, id, ids
struct AchievementCategory: Decodable {
    let id: Int
    let name: String
    let description: String
    let order: Int
    let icon: String
    let achievements: [Int]
}
