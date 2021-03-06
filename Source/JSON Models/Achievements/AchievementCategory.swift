//
//  AchievementCategory.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/20/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//achievements/categories
//lang, id, ids
public struct AchievementCategory: Decodable, Identifiable {
    public let id: Int
    public let name: String
    public let description: String
    public let order: Int
    public let icon: String
    public let achievements: [Int]
}
