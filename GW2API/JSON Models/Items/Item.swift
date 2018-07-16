//
//  Item.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//items
//lang, id, ids
public struct Item : Decodable {
    public let id: Int
    public let chat_link: String
    public let name: String
    public let icon: String
    public let description: String?
    public let type: String
    public let rarity: String
    public let level: Int
    public let vendor_value: Int
    public let default_skin: Int?
    public let flags: [String]
    public let game_types: [String]
    public let restrictions: [String]
    public let details: ItemDetails?
}

public struct ItemDetails : Decodable {
    public let type: String
    public let infusion_slots: [InfusionSlot]?
    public let infix_upgrade: InfixUpgrade?
    public let suffix_item_id: Int?
    public let secondary_suffix_id: String?
    public let stat_choices: [String]?
    
    //Armor
    public let weight_class: String?
    public let defense: Int?
    
    //Bag
    public let size: Int?
    public let no_sell_or_sort: Bool?
    
    //Consumable
    public let description: String?
    public let duration_ms: Int?
    public let unlock_type: String?
    public let color_id: Int?
    public let recipe_id: Int?
    public let apply_count: Int?
    public let name: String?
    public let skins: [Int]?
    
    //Minipet
    public let minipet_id: Int?
    
    //Salvage Kits
    public let charges: Int?
    
    //Upgrade Components
    public let flags: [String]?
    public let infusion_upgrade_flags: [String]?
    public let suffix: String?
    public let bonuses: [String]?
    
    //Weapon
    public let damage_type: String?
    public let min_power: Int?
    public let max_power: Int?
}

public struct InfusionSlot : Decodable {
    public let flags: [String]
    public let item_id: Int?
}

public struct InfixUpgrade : Decodable {
    public let attributes: [InfixUpgradeAttribute]
    public let buff: InfixUpgradeBuff?
    
    public struct InfixUpgradeAttribute : Decodable {
        public let attribute: String
        public let modifier: Int
    }
    
    public struct InfixUpgradeBuff : Decodable {
        public let skill_id: Int
        public let description: String
    }
}




