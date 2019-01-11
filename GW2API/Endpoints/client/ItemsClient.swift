//
//  ItemsClient.swift
//  GW2API
//
//  Created by Zhendryk on 7/11/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

import GenericAPIClient

/// The item endpoint client: api.guildwars2.com/v2/...
public class ItemsClient : Client {
    
    /// The finishers endpoint: information about finishers
    public let finishers: FinishersClient = FinishersClient()
    
    /// The itemstats endpoint: information about item stats
    public let itemstats: ItemStatsClient = ItemStatsClient()
    
    /// The materials endpoint: information about materials
    public let materials: MaterialsClient = MaterialsClient()
    
    /// The pvp amulets endpoint: information about pvp amulets
    public let pvpamulets: PVPAmuletsClient = PVPAmuletsClient()
    
    /// The recipes endpoint: information about recipes, contains a search interface
    public let recipes: RecipesClient = RecipesClient()
    
    /// The skins endpoint: information about skins
    public let skins: SkinsClient = SkinsClient()
    
    /// Sets the language setting of all endpoints
    ///
    /// - Parameter language: The language to set
    override func setLanguage(_ language: String) {
        self.lang = language
        self.finishers.setLanguage(language)
        self.itemstats.setLanguage(language)
        self.materials.setLanguage(language)
        self.pvpamulets.setLanguage(language)
        self.recipes.setLanguage(language)
        self.skins.setLanguage(language)
    }
    
    /// Returns a list of all item ids
    ///
    /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
    public func get(_ completion: @escaping RequestCallback<[Int]>) {
        self.client.send(request: GetItemIDs()) { result in
            completion(result)
        }
    }
    
    /// Returns the item associated with the given id
    ///
    /// - Parameters:
    ///   - id: The ID of the item you are looking for
    ///   - completion: Callback function to handle the data returned from the API (Result<Item?, APIError>)
    public func get(id: Int, _ completion: @escaping RequestCallback<Item>) {
        self.client.send(request: GetItem(id: id, lang: lang)) { result in
            completion(result)
        }
    }
    
    /// Returns one or more items associated with the given IDs
    ///
    /// - Parameters:
    ///   - ids: The ID(s) of the item(s) you are looking for
    ///   - completion: Callback function to handle the data returned from the API (Result<[Item]?, APIError>)
    public func get(ids: [Int], _ completion: @escaping RequestCallback<[Item]>) {
        self.client.send(request: GetItems(ids: ids, page: nil, page_size: nil, lang: lang)) { result in
            completion(result)
        }
    }
    
    /// Returns the given page of paginated information about items with a specified page_size
    ///
    /// - Parameters:
    ///   - page: The page number of data you wish to recieve
    ///   - page_size: The number of entries you wish to see on this page
    ///   - completion: Callback function to handle the data returned from the API (Result<[Item]?, APIError>)
    public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[Item]>) {
        self.client.send(request: GetItems(ids: nil, page: page, page_size: page_size, lang: lang)) { result in
            completion(result)
        }
    }
    
    /// The finishers endpoint client: api.guildwars2.com/v2/finishers
    public class FinishersClient : Client {
        
        /// Returns a list of all finisher ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetFinisherIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the finisher associated with the given id
        ///
        /// - Parameters:
        ///   - id: The ID of the finisher you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<Finisher?, APIError>)
        public func get(id: Int, _ completion: @escaping RequestCallback<Finisher>) {
            self.client.send(request: GetFinisher(id: id, lang: lang)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more finishers associated with the given IDs
        ///
        /// - Parameters:
        ///   - ids: The ID(s) of the finisher(s) you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Finisher]?, APIError>)
        public func get(ids: [Int], _ completion: @escaping RequestCallback<[Finisher]>) {
            self.client.send(request: GetFinishers(ids: ids, page: nil, page_size: nil, lang: lang)) { result in
                completion(result)
            }
        }
        
        /// Returns the given page of paginated information about finishers with a specified page_size
        ///
        /// - Parameters:
        ///   - page: The page number of data you wish to recieve
        ///   - page_size: The number of entries you wish to see on this page
        ///   - completion: Callback function to handle the data returned from the API (Result<[Finisher]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[Finisher]>) {
            self.client.send(request: GetFinishers(ids: nil, page: page, page_size: page_size, lang: lang)) { result in
                completion(result)
            }
        }
    }
    
    /// The itemstats endpoint client: api.guildwars2.com/v2/itemstats
    public class ItemStatsClient : Client {
        
        /// Returns a list of all itemstats ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetItemStatsIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the itemstats associated with the given id
        ///
        /// - Parameters:
        ///   - id: The ID of the itemstat you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<Itemstats?, APIError>)
        public func get(id: Int, _ completion: @escaping RequestCallback<ItemStats>) {
            self.client.send(request: GetItemStats(id: id, lang: lang)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more itemstats associated with the given IDs
        ///
        /// - Parameters:
        ///   - ids: The ID(s) of the itemstat(s) you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<[ItemStats]?, APIError>)
        public func get(ids: [Int], _ completion: @escaping RequestCallback<[ItemStats]>) {
            self.client.send(request: GetItemsStats(ids: ids, page: nil, page_size: nil, lang: lang)) { result in
                completion(result)
            }
        }
        
        /// Returns the given page of paginated information about itemstats with a specified page_size
        ///
        /// - Parameters:
        ///   - page: The page number of data you wish to recieve
        ///   - page_size: The number of entries you wish to see on this page
        ///   - completion: Callback function to handle the data returned from the API (Result<[ItemStats]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[ItemStats]>) {
            self.client.send(request: GetItemsStats(ids: nil, page: page, page_size: page_size, lang: lang)) { result in
                completion(result)
            }
        }
    }
    
    /// The materials endpoint client: api.guildwars2.com/v2/materials
    public class MaterialsClient : Client {
        
        /// Returns a list of all material ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetMaterialIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the material associated with the given id
        ///
        /// - Parameters:
        ///   - id: The ID of the material you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<Material?, APIError>)
        public func get(id: Int, _ completion: @escaping RequestCallback<Material>) {
            self.client.send(request: GetMaterial(id: id, lang: lang)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more materials associated with the given IDs
        ///
        /// - Parameters:
        ///   - ids: The ID(s) of the material(s) you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Material]?, APIError>)
        public func get(ids: [Int], _ completion: @escaping RequestCallback<[Material]>) {
            self.client.send(request: GetMaterials(ids: ids, page: nil, page_size: nil, lang: lang)) { result in
                completion(result)
            }
        }
        
        /// Returns the given page of paginated information about materials with a specified page_size
        ///
        /// - Parameters:
        ///   - page: The page number of data you wish to recieve
        ///   - page_size: The number of entries you wish to see on this page
        ///   - completion: Callback function to handle the data returned from the API (Result<[Material]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[Material]>) {
            self.client.send(request: GetMaterials(ids: nil, page: page, page_size: page_size, lang: lang)) { result in
                completion(result)
            }
        }
    }
    
    /// The pvp amulets endpoint client: api.guildwars2.com/v2/pvp/amulets
    public class PVPAmuletsClient : Client {
        
        /// Returns a list of all pvp amulet ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetPVPAmuletIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the pvp amulet associated with the given id
        ///
        /// - Parameters:
        ///   - id: The ID of the pvp amulet you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<[PVPAmulet]?, APIError>)
        public func get(id: Int, _ completion: @escaping RequestCallback<PVPAmulet>) {
            self.client.send(request: GetPVPAmulet(id: id, lang: lang)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more pvp amulets associated with the given IDs
        ///
        /// - Parameters:
        ///   - ids: The ID(s) of the pvp amulet(s) you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<[PVPAmulet]?, APIError>)
        public func get(ids: [Int], _ completion: @escaping RequestCallback<[PVPAmulet]>) {
            self.client.send(request: GetPVPAmulets(ids: ids, page: nil, page_size: nil, lang: lang)) { result in
                completion(result)
            }
        }
        
        /// Returns the given page of paginated information about pvp amulets with a specified page_size
        ///
        /// - Parameters:
        ///   - page: The page number of data you wish to recieve
        ///   - page_size: The number of entries you wish to see on this page
        ///   - completion: Callback function to handle the data returned from the API (Result<[PVPAmulet]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[PVPAmulet]>) {
            self.client.send(request: GetPVPAmulets(ids: nil, page: page, page_size: page_size, lang: lang)) { result in
                completion(result)
            }
        }
    }
    
    /// The recipes endpoint client: api.guildwars2.com/v2/recipes
    public class RecipesClient : Client {
        
        /// Returns a list of all recipe ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetRecipeIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the recipe associated with the given id
        ///
        /// - Parameters:
        ///   - id: The ID of the recipe you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<Recipe?, APIError>)
        public func get(id: Int, _ completion: @escaping RequestCallback<Recipe>) {
            self.client.send(request: GetRecipe(id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more recipes associated with the given IDs
        ///
        /// - Parameters:
        ///   - ids: The ID(s) of the recipe(s) you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Recipe]?, APIError>)
        public func get(ids: [Int], _ completion: @escaping RequestCallback<[Recipe]>) {
            self.client.send(request: GetRecipes(ids: ids, page: nil, page_size: nil)) { result in
                completion(result)
            }
        }
        
        /// Returns the given page of paginated information about recipes with a specified page_size
        ///
        /// - Parameters:
        ///   - page: The page number of data you wish to recieve
        ///   - page_size: The number of entries you wish to see on this page
        ///   - completion: Callback function to handle the data returned from the API (Result<[Recipe]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[Recipe]>) {
            self.client.send(request: GetRecipes(ids: nil, page: page, page_size: page_size)) { result in
                completion(result)
            }
        }
        
        /// Returns a list of recipe ids for recipes that take the given input (item id) as an ingredient
        ///
        /// - Parameters:
        ///   - input: The item id of the input ingredient
        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func search(input: Int, _ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: SearchRecipes(input: input, output: nil)) { result in
                completion(result)
            }
        }
        
        /// Returns a list of recipe ids for recipes that produce the given output (item id)
        ///
        /// - Parameters:
        ///   - output: The item id of the item that will be produced by the recipes
        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func search(output: Int, _ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: SearchRecipes(input: nil, output: output)) { result in
                completion(result)
            }
        }
    }
    
    /// The skins endpoint client: api.guildwars2.com/v2/skins
    public class SkinsClient : Client {
        
        /// Returns a list of all skin ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetSkinIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the skin associated with the given id
        ///
        /// - Parameters:
        ///   - id: The ID of the skin you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<Skin?, APIError>)
        public func get(id: Int, _ completion: @escaping RequestCallback<Skin>) {
            self.client.send(request: GetSkin(id: id, lang: lang)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more skins associated with the given IDs
        ///
        /// - Parameters:
        ///   - ids: The ID(s) of the skin(s) you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Skin]?, APIError>)
        public func get(ids: [Int], _ completion: @escaping RequestCallback<[Skin]>) {
            self.client.send(request: GetSkins(ids: ids, page: nil, page_size: nil, lang: lang)) { result in
                completion(result)
            }
        }
        
        /// Returns the given page of paginated information about skins with a specified page_size
        ///
        /// - Parameters:
        ///   - page: The page number of data you wish to recieve
        ///   - page_size: The number of entries you wish to see on this page
        ///   - completion: Callback function to handle the data returned from the API (Result<[Skin]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[Skin]>) {
            self.client.send(request: GetSkins(ids: nil, page: page, page_size: page_size, lang: lang)) { result in
                completion(result)
            }
        }
    }
}
