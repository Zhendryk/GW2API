//
//  WVWAbility.swift
//  GW2API
//
//  Created by Zhendryk on 7/11/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//wvw/abilities
//lang, ids
struct WVWAbility : Decodable {
    let id: Int
    let name: String
    let description: String
    let icon: String
    let ranks: [WVWAbilityRank]
}

struct WVWAbilityRank : Decodable {
    let cost: Int
    let effect: String
}
