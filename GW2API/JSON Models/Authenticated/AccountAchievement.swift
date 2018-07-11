//
//  AccountAchievement.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//account/achievements
//access_token
struct AccountAchievement: Decodable {
    let id: Int
    let current: Int?
    let max: Int?
    let done: Bool
    let repeated: Int?
    let bits: [Int]?
}
