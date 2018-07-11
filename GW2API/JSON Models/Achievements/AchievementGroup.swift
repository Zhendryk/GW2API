//
//  AchievementGroup.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/20/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//achievements/groups
//lang, id, ids
struct AchievementGroup: Decodable {
    let id: String
    let name: String
    let description: String
    let order: Int
    let categories: [Int]
}
