//
//  Item.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//items
//lang, id, ids
struct Item : Decodable {
    let id: Int
    let chat_link: String
    let name: String
    let icon: String
    let description: String?
    let type: String
    let rarity: String
    let level: Int
    let vendor_value: Int
    let default_skin: Int?
    let flags: [String]
    let game_types: [String]
    let restrictions: [String]
    let details: ItemDetails?
}

struct ItemDetails : Decodable {
    let type: String
    let infusion_slots: [InfusionSlot]?
    let infix_upgrade: InfixUpgrade?
    let suffix_item_id: Int?
    let secondary_suffix_id: String?
    let stat_choices: [String]?
    
    //Armor
    let weight_class: String?
    let defense: Int?
    
    //Bag
    let size: Int?
    let no_sell_or_sort: Bool?
    
    //Consumable
    let description: String?
    let duration_ms: Int?
    let unlock_type: String?
    let color_id: Int?
    let recipe_id: Int?
    let apply_count: Int?
    let name: String?
    let skins: [Int]?
    
    //Minipet
    let minipet_id: Int?
    
    //Salvage Kits
    let charges: Int?
    
    //Upgrade Components
    let flags: [String]?
    let infusion_upgrade_flags: [String]?
    let suffix: String?
    let bonuses: [String]?
    
    //Weapon
    let damage_type: String?
    let min_power: Int?
    let max_power: Int?
}

struct InfusionSlot : Decodable {
    let flags: [String]
    let item_id: Int?
}

struct InfixUpgrade : Decodable {
    let attributes: [InfixUpgradeAttribute]
    let buff: InfixUpgradeBuff?
    
    struct InfixUpgradeAttribute : Decodable {
        let attribute: String
        let modifier: Int
    }
    
    struct InfixUpgradeBuff : Decodable {
        let skill_id: Int
        let description: String
    }
}




