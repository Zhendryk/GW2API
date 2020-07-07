//
//  GMTrait.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/6/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//traits
//lang, id, ids
public struct Trait : Decodable, Identifiable {
    public let id: Int
    public let name: String
    public let icon: String
    public let description: String
    public let specialization: Int
    public let tier: Int
    public let slot: String
    public let facts: [TraitFact]?
    public let traited_facts: [TraitedFact]?
    public let skills: [TraitSkill]?
    
    public struct TraitFact : Decodable {
        public let text: String?
        public let icon: String?
        public let type: String
    }
    
    public struct TraitedFact : Decodable {
        public let text: String?
        public let icon: String?
        public let type: String
        public let requires_trait: Int
        public let overrides: Int?
    }
    
    public struct TraitSkill : Decodable, Identifiable {
        public let id: Int
        public let name: String
        public let description: String
        public let icon: String
        public let facts: [TraitFact]?
        public let traited_facts: [TraitedFact]?
    }
}
