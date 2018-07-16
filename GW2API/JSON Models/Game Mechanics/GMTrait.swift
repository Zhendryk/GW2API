//
//  GMTrait.swift
//  GW2API
//
//  Created by Zhendryk on 7/6/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//traits
//lang, id, ids
struct GMTrait : Decodable {
    let id: Int
    let name: String
    let icon: String
    let description: String
    let specialization: Int
    let tier: Int
    let slot: String
    let facts: [TraitFact]?
    let traited_facts: [TraitedFact]?
    let skills: [TraitSkill]?
    
    struct TraitFact : Decodable {
        let text: String?
        let icon: String?
        let type: String
    }
    
    struct TraitedFact : Decodable {
        let text: String?
        let icon: String?
        let type: String
        let requires_trait: Int
        let overrides: Int?
    }
    
    struct TraitSkill : Decodable {
        let id: Int
        let name: String
        let description: String
        let icon: String
        let facts: [TraitFact]?
        let traited_facts: [TraitedFact]?
    }
}
