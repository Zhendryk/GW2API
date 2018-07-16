//
//  AccountCharacter.swift
//  GW2API
//
//  Created by Zhendryk on 4/20/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//characters
public struct AccountCharacter: Decodable {
    let name: String
    let race: String
    let gender: String
    let flags: [String]
    let profession: String
    let level: Int
    let guild: String?
    let age: Int
    let created: String
    let deaths: Int
    let crafting: [CraftingDiscipline]
    let title: Int?
    let backstory: [String]
    let wvw_abilities: [AccountWVWAbility]
    let specializations: Specializations?
    let skills: Skills
    let equipment: [EquipmentItem]
    let recipes: [Int]
    let equipment_pvp: EquipmentPVP
    let training: [TrainedSkill]
    let bags: [Bag?]
    
    public struct CraftingDiscipline: Decodable {
        let discipline: String
        let rating: Int
        let active: Bool
    }
    
    public struct AccountWVWAbility: Decodable {
        let id: Int
        let rank: Int
    }
    
    public struct Specializations: Decodable {
        let pve: [Specialization]
        let pvp: [Specialization]
        let wvw: [Specialization]
        
        public struct Specialization: Decodable {
            let id: Int
            let traits: [Int?]
        }
    }
    
    public struct Skills: Decodable {
        let pve: Skill
        let pvp: Skill
        let wvw: Skill
        
        public struct Skill: Decodable {
            let heal: Int
            let utilities: [Int]
            let elite: Int
            let legends: [String]?
        }
    }
    
    public struct EquipmentItem: Decodable {
        let id: Int
        let slot: String
        let infusions: [Int]?
        let upgrades: [Int]?
        let skin: Int?
        let stats: EquipmentStats?
        let binding: String?
        let charges: Int?
        let bound_to: String?
        let dyes: [Int?]?
    }
    
    public struct CharacterInventoryItem: Decodable {
        let id: Int
        let count: Int
        let infusions: [Int]?
        let upgrades: [Int?]?
        let skin: Int?
        let stats: EquipmentStats?
        let binding: String?
        let bound_to: String?
    }
    
    public struct EquipmentStats: Decodable {
        let id: Int
        let attributes: EquipmentAttributes
        
        public struct EquipmentAttributes: Decodable {
            let Power: Int?
            let Precision: Int?
            let Toughness: Int?
            let Vitality: Int?
            let ConditionDamage: Int?
            let ConditionDuration: Int?
            let Healing: Int?
            let BoonDuration: Int?
            let CritDamage: Int?
        }
    }
    
    public struct Bag: Decodable {
        let id: Int
        let size: Int
        let inventory: [CharacterInventoryItem?]
    }
    
    public struct EquipmentPVP: Decodable {
        let amulet: Int?
        let rune: Int?
        let sigils: [Int?]?
    }
    
    public struct TrainedSkill: Decodable {
        let id: Int
        let spent: Int
        let done: Bool
    }
}
