//
//  ItemsClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/11/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class ItemsClient : Client {
    let finishers: FinishersClient = FinishersClient()
    let itemstats: ItemStatsClient = ItemStatsClient()
    let materials: MaterialsClient = MaterialsClient()
    let pvpamulets: PVPAmuletsClient = PVPAmuletsClient()
    let recipes: RecipesClient = RecipesClient()
    let skins: SkinsClient = SkinsClient()
    
    func get(completion: @escaping (Result<GuildDetails?, APIError>) -> Void) {
        
    }
    
    func get(id: String, completion: @escaping (Result<GuildDetails?, APIError>) -> Void) {
        
    }
    
    func get(ids: String, completion: @escaping (Result<GuildDetails?, APIError>) -> Void) {
        
    }
    
    class FinishersClient : Client {
        
    }
    
    class ItemStatsClient : Client {
        
    }
    
    class MaterialsClient : Client {
        
    }
    
    class PVPAmuletsClient : Client {
        
    }
    
    class RecipesClient : Client {
        
    }
    
    class SkinsClient : Client {
        
    }
}
