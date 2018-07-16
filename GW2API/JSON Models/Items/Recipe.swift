//
//  Recipe.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//recipes
//id, ids
public struct Recipe : Decodable {
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
    
    public struct Ingredient : Decodable {
        let item_id: Int
        let count: Int
    }
    
    public struct GuildIngredient : Decodable {
        let upgrade_id: Int
        let count: Int
    }
}
