//
//  GMSkill.swift
//  GW2API
//
//  Created by Zhendryk on 7/6/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//skills
//lang, id, ids
public struct GMSkill : Decodable {
    let id: Int
    let name: String
    let description: String?
    let icon: String
    let chat_link: String
    let type: String?
    let weapon_type: String?
    let professions: [String]
    let slot: String?
    let facts: [SkillFact]?
    let traited_facts: [SkillFact]?
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
    
    public struct SkillFact : Decodable {
        let text: String
        let icon: String?
        let type: String
    }
}
