//
//  AchievementGroup.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/20/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//achievements/groups
//lang, id, ids
public struct AchievementGroup: Decodable {
    public let id: String
    public let name: String
    public let description: String
    public let order: Int
    public let categories: [Int]
}
