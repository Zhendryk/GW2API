//
//  Recipe.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//recipes
//id, ids
struct Recipe : Decodable {
    let id: Int
    let type: String
    let output_item_id: Int
    let output_item_count: Int
    let time_to_craft_ms: Int
    let disciplines: [String]
    let min_rating: Int
    let flags: [String]
    let ingredients: [Ingredient]
    let guild_ingredients: [GuildIngredient]?
    let output_upgrade_id: Int?
    let chat_link: String
    
    struct Ingredient : Decodable {
        let item_id: Int
        let count: Int
    }
    
    struct GuildIngredient : Decodable {
        let upgrade_id: Int
        let count: Int
    }
}
