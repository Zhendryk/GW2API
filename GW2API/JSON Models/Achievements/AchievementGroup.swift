//
//  AchievementGroup.swift
//  GW2API
//
//  Created by Zhendryk on 4/20/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//achievements/groups
//lang, id, ids
public struct AchievementGroup: Decodable {
    let id: String
    let name: String
    let description: String
    let order: Int
    let categories: [Int]
}
