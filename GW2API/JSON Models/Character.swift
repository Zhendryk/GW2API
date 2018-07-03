//
//  Character.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/24/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

struct Character: Decodable {
    let backstory: [String]
    let name: String
    let race: String
    let gender: String
    let profession: String
    let level: Int
    let guild: String
    let age: Int
    let created: String
    let deaths: Int
    let crafting: crafting
    let title: Int
    let backstory: backstory
    let wvw_abilities: [wvw_ability]
    let specializations: specialization
    let skills: skills
    let equipment: [equipment]
    let recipes: [Int]
    let equipment_pvp: equipment_pvp
    let training: [training]
    let bags: [bag]
}

struct crafting: Decodable {
    
}
