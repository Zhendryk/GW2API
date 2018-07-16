//
//  AccountAchievement.swift
//  GW2API
//
//  Created by Zhendryk on 3/17/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//account/achievements
//access_token
public struct AccountAchievement: Decodable {
    let id: Int
    let current: Int?
    let max: Int?
    let done: Bool
    let repeated: Int?
    let bits: [Int]?
}
