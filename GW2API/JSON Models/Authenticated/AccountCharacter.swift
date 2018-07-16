//
//  AccountCharacter.swift
//  GW2API
//
//  Created by Zhendryk on 4/20/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//characters
public struct AccountCharacter: Decodable {
    public let name: String
    public let race: String
    public let gender: String
    public let flags: [String]
    public let profession: String
    public let level: Int
    public let guild: String?
    public let age: Int
    public let created: String
    public let deaths: Int
    public let crafting: [CraftingDiscipline]
    public let title: Int?
    public let backstory: [String]
    public let wvw_abilities: [AccountWVWAbility]
    public let specializations: Specializations?
    public let skills: Skills
    public let equipment: [EquipmentItem]
    public let recipes: [Int]
    public let equipment_pvp: EquipmentPVP
    public let training: [TrainedSkill]
    public let bags: [Bag?]
    
    public struct CraftingDiscipline: Decodable {
        public let discipline: String
        public let rating: Int
        public let active: Bool
    }
    
    public struct AccountWVWAbility: Decodable {
        public let id: Int
        public let rank: Int
    }
    
    public struct Specializations: Decodable {
        public let pve: [Specialization]
        public let pvp: [Specialization]
        public let wvw: [Specialization]
        
        public struct Specialization: Decodable {
            public let id: Int
            public let traits: [Int?]
        }
    }
    
    public struct Skills: Decodable {
        public let pve: Skill
        public let pvp: Skill
        public let wvw: Skill
        
        public struct Skill: Decodable {
            public let heal: Int
            public let utilities: [Int]
            public let elite: Int
            public let legends: [String]?
        }
    }
    
    public struct EquipmentItem: Decodable {
        public let id: Int
        public let slot: String
        public let infusions: [Int]?
        public let upgrades: [Int]?
        public let skin: Int?
        public let stats: EquipmentStats?
        public let binding: String?
        public let charges: Int?
        public let bound_to: String?
        public let dyes: [Int?]?
    }
    
    public struct CharacterInventoryItem: Decodable {
        public let id: Int
        public let count: Int
        public let infusions: [Int]?
        public let upgrades: [Int?]?
        public let skin: Int?
        public let stats: EquipmentStats?
        public let binding: String?
        public let bound_to: String?
    }
    
    public struct EquipmentStats: Decodable {
        public let id: Int
        public let attributes: EquipmentAttributes
        
        public struct EquipmentAttributes: Decodable {
            public let Power: Int?
            public let Precision: Int?
            public let Toughness: Int?
            public let Vitality: Int?
            public let ConditionDamage: Int?
            public let ConditionDuration: Int?
            public let Healing: Int?
            public let BoonDuration: Int?
            public let CritDamage: Int?
        }
    }
    
    public struct Bag: Decodable {
        public let id: Int
        public let size: Int
        public let inventory: [CharacterInventoryItem?]
    }
    
    public struct EquipmentPVP: Decodable {
        public let amulet: Int?
        public let rune: Int?
        public let sigils: [Int?]?
    }
    
    public struct TrainedSkill: Decodable {
        public let id: Int
        public let spent: Int
        public let done: Bool
    }
}
