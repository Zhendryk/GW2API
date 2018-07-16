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
    public let id: Int
    public let current: Int?
    public let max: Int?
    public let done: Bool
    public let repeated: Int?
    public let bits: [Int]?
}
