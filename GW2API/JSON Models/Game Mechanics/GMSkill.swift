//
//  GMSkill.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/6/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct GMSkill : Decodable {
    let id: Int
    let name: String
    let description: String?
    let icon: String
    let chat_link: String
    let type: String?
    let weapon_type: String?
    let professions: [String]
    let slot: String?
    let facts: [fact]?
    let traited_facts: [fact]?
    let categories: [String]?
    let attunement: String?
    let cost: Int?
    let dual_wield: String?
    let flip_skill: Int?
    let initiative: Int?
    let next_chain: Int?
    let prev_chain: Int?
    let transform_skills: [String]?
    let toolbelt_skill: Int?
}

struct fact : Decodable {
    let text: String
    let icon: String?
    let type: String
}
