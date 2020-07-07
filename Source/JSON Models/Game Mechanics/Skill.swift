//
//  GMSkill.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/6/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//skills
//lang, id, ids
public struct Skill : Decodable, Identifiable {
    public let id: Int
    public let name: String
    public let description: String?
    public let icon: String
    public let chat_link: String
    public let type: String?
    public let weapon_type: String?
    public let professions: [String]
    public let slot: String?
    public let facts: [SkillFact]?
    public let traited_facts: [SkillFact]?
    public let categories: [String]?
    public let attunement: String?
    public let cost: Int?
    public let dual_wield: String?
    public let flip_skill: Int?
    public let initiative: Int?
    public let next_chain: Int?
    public let prev_chain: Int?
    public let transform_skills: [String]?
    public let toolbelt_skill: Int?
    
    public struct SkillFact : Decodable {
        public let text: String
        public let icon: String?
        public let type: String
    }
}
