//
//  Recipe.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//recipes
//id, ids
public struct Recipe : Decodable, Identifiable {
    public let id: Int
    public let type: String
    public let output_item_id: Int
    public let output_item_count: Int
    public let time_to_craft_ms: Int
    public let disciplines: [String]
    public let min_rating: Int
    public let flags: [String]
    public let ingredients: [Ingredient]
    public let guild_ingredients: [GuildIngredient]?
    public let output_upgrade_id: Int?
    public let chat_link: String
    
    public struct Ingredient : Decodable {
        public let item_id: Int
        public let count: Int
    }
    
    public struct GuildIngredient : Decodable {
        public let upgrade_id: Int
        public let count: Int
    }
}
