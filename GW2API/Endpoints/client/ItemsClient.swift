//
//  ItemsClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/11/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//


/// The item endpoint client: api.guildwars2.com/v2/...
class ItemsClient : Client {
    
    /// The finishers endpoint: information about finishers
    let finishers: FinishersClient = FinishersClient()
    
    /// The itemstats endpoint: information about item stats
    let itemstats: ItemStatsClient = ItemStatsClient()
    
    /// The materials endpoint: information about materials
    let materials: MaterialsClient = MaterialsClient()
    
    /// The pvp amulets endpoint: information about pvp amulets
    let pvpamulets: PVPAmuletsClient = PVPAmuletsClient()
    
    /// The recipes endpoint: information about recipes, contains a search interface
    let recipes: RecipesClient = RecipesClient()
    
    /// The skins endpoint: information about skins
    let skins: SkinsClient = SkinsClient()
    
    /// Sets the language setting of all endpoints
    ///
    /// - Parameter language: The language to set
    override func setLanguage(_ language: String) {
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
    func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
        fetchAsync(with: EItems.items.request, decode: { json -> [Int]? in
            guard let res = json as? [Int] else { return nil }
            return res
        }, completion: completion)
    }
    
    /// Returns the item associated with the given id
    ///
    /// - Parameters:
    ///   - id: The ID of the item you are looking for
    ///   - completion: Callback function to handle the data returned from the API (Result<Item?, APIError>)
    func get(id: Int, completion: @escaping (Result<Item?, APIError>) -> Void) {
        fetchAsync(with: EItems.items.idRequest(id: String(id)), decode: { json -> Item? in
            guard let res = json as? Item else { return nil }
            return res
        }, completion: completion)
    }
    
    /// Returns one or more items associated with the given IDs
    ///
    /// - Parameters:
    ///   - ids: The ID(s) of the item(s) you are looking for
    ///   - completion: Callback function to handle the data returned from the API (Result<[Item]?, APIError>)
    func get(ids: [Int], completion: @escaping (Result<[Item]?, APIError>) -> Void) {
        fetchAsync(with: EItems.items.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [Item]? in
            guard let res = json as? [Item] else { return nil }
            return res
        }, completion: completion)
    }
    
    /// Returns the given page of paginated information about items with a specified page_size
    ///
    /// - Parameters:
    ///   - page: The page number of data you wish to recieve
    ///   - page_size: The number of entries you wish to see on this page
    ///   - completion: Callback function to handle the data returned from the API (Result<[Item]?, APIError>)
    func get(page: Int, page_size: Int, completion: @escaping (Result<[Item]?, APIError>) -> Void) {
        fetchAsync(with: EItems.items.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [Item]? in
            guard let res = json as? [Item] else { return nil }
            return res
        }, completion: completion)
    }
    
    /// The finishers endpoint client: api.guildwars2.com/v2/finishers
    class FinishersClient : Client {
        
        /// Returns a list of all finisher ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EItems.finishers.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the finisher associated with the given id
        ///
        /// - Parameters:
        ///   - id: The ID of the finisher you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<Finisher?, APIError>)
        func get(id: Int, completion: @escaping (Result<Finisher?, APIError>) -> Void) {
            fetchAsync(with: EItems.finishers.idRequest(id: String(id)), decode: { json -> Finisher? in
                guard let res = json as? Finisher else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more finishers associated with the given IDs
        ///
        /// - Parameters:
        ///   - ids: The ID(s) of the finisher(s) you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Finisher]?, APIError>)
        func get(ids: [Int], completion: @escaping (Result<[Finisher]?, APIError>) -> Void) {
            fetchAsync(with: EItems.finishers.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [Finisher]? in
                guard let res = json as? [Finisher] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated information about finishers with a specified page_size
        ///
        /// - Parameters:
        ///   - page: The page number of data you wish to recieve
        ///   - page_size: The number of entries you wish to see on this page
        ///   - completion: Callback function to handle the data returned from the API (Result<[Finisher]?, APIError>)
        func get(page: Int, page_size: Int, completion: @escaping (Result<[Finisher]?, APIError>) -> Void) {
            fetchAsync(with: EItems.finishers.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [Finisher]? in
                guard let res = json as? [Finisher] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The itemstats endpoint client: api.guildwars2.com/v2/itemstats
    class ItemStatsClient : Client {
        
        /// Returns a list of all itemstats ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EItems.itemstats.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the itemstats associated with the given id
        ///
        /// - Parameters:
        ///   - id: The ID of the itemstat you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<Itemstats?, APIError>)
        func get(id: Int, completion: @escaping (Result<ItemStats?, APIError>) -> Void) {
            fetchAsync(with: EItems.itemstats.idRequest(id: String(id)), decode: { json -> ItemStats? in
                guard let res = json as? ItemStats else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more itemstats associated with the given IDs
        ///
        /// - Parameters:
        ///   - ids: The ID(s) of the itemstat(s) you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<[ItemStats]?, APIError>)
        func get(ids: [Int], completion: @escaping (Result<[ItemStats]?, APIError>) -> Void) {
            fetchAsync(with: EItems.itemstats.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [ItemStats]? in
                guard let res = json as? [ItemStats] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated information about itemstats with a specified page_size
        ///
        /// - Parameters:
        ///   - page: The page number of data you wish to recieve
        ///   - page_size: The number of entries you wish to see on this page
        ///   - completion: Callback function to handle the data returned from the API (Result<[ItemStats]?, APIError>)
        func get(page: Int, page_size: Int, completion: @escaping (Result<[ItemStats]?, APIError>) -> Void) {
            fetchAsync(with: EItems.itemstats.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [ItemStats]? in
                guard let res = json as? [ItemStats] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The materials endpoint client: api.guildwars2.com/v2/materials
    class MaterialsClient : Client {
        
        /// Returns a list of all material ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EItems.materials.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the material associated with the given id
        ///
        /// - Parameters:
        ///   - id: The ID of the material you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<Material?, APIError>)
        func get(id: Int, completion: @escaping (Result<Material?, APIError>) -> Void) {
            fetchAsync(with: EItems.materials.idRequest(id: String(id)), decode: { json -> Material? in
                guard let res = json as? Material else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more materials associated with the given IDs
        ///
        /// - Parameters:
        ///   - ids: The ID(s) of the material(s) you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Material]?, APIError>)
        func get(ids: [Int], completion: @escaping (Result<[Material]?, APIError>) -> Void) {
            fetchAsync(with: EItems.materials.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [Material]? in
                guard let res = json as? [Material] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated information about materials with a specified page_size
        ///
        /// - Parameters:
        ///   - page: The page number of data you wish to recieve
        ///   - page_size: The number of entries you wish to see on this page
        ///   - completion: Callback function to handle the data returned from the API (Result<[Material]?, APIError>)
        func get(page: Int, page_size: Int, completion: @escaping (Result<[Material]?, APIError>) -> Void) {
            fetchAsync(with: EItems.materials.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [Material]? in
                guard let res = json as? [Material] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The pvp amulets endpoint client: api.guildwars2.com/v2/pvp/amulets
    class PVPAmuletsClient : Client {
        
        /// Returns a list of all pvp amulet ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EItems.pvpamulets.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the pvp amulet associated with the given id
        ///
        /// - Parameters:
        ///   - id: The ID of the pvp amulet you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<[PVPAmulet]?, APIError>)
        func get(id: Int, completion: @escaping (Result<PVPAmulet?, APIError>) -> Void) {
            fetchAsync(with: EItems.pvpamulets.idRequest(id: String(id)), decode: { json -> PVPAmulet? in
                guard let res = json as? PVPAmulet else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more pvp amulets associated with the given IDs
        ///
        /// - Parameters:
        ///   - ids: The ID(s) of the pvp amulet(s) you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<[PVPAmulet]?, APIError>)
        func get(ids: [Int], completion: @escaping (Result<[PVPAmulet]?, APIError>) -> Void) {
            fetchAsync(with: EItems.pvpamulets.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [PVPAmulet]? in
                guard let res = json as? [PVPAmulet] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated information about pvp amulets with a specified page_size
        ///
        /// - Parameters:
        ///   - page: The page number of data you wish to recieve
        ///   - page_size: The number of entries you wish to see on this page
        ///   - completion: Callback function to handle the data returned from the API (Result<[PVPAmulet]?, APIError>)
        func get(page: Int, page_size: Int, completion: @escaping (Result<[PVPAmulet]?, APIError>) -> Void) {
            fetchAsync(with: EItems.pvpamulets.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [PVPAmulet]? in
                guard let res = json as? [PVPAmulet] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The recipes endpoint client: api.guildwars2.com/v2/recipes
    class RecipesClient : Client {
        
        /// Returns a list of all recipe ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EItems.recipes.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the recipe associated with the given id
        ///
        /// - Parameters:
        ///   - id: The ID of the recipe you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<Recipe?, APIError>)
        func get(id: Int, completion: @escaping (Result<Recipe?, APIError>) -> Void) {
            fetchAsync(with: EItems.recipes.idRequest(id: String(id)), decode: { json -> Recipe? in
                guard let res = json as? Recipe else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more recipes associated with the given IDs
        ///
        /// - Parameters:
        ///   - ids: The ID(s) of the recipe(s) you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Recipe]?, APIError>)
        func get(ids: [Int], completion: @escaping (Result<[Recipe]?, APIError>) -> Void) {
            fetchAsync(with: EItems.recipes.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [Recipe]? in
                guard let res = json as? [Recipe] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated information about recipes with a specified page_size
        ///
        /// - Parameters:
        ///   - page: The page number of data you wish to recieve
        ///   - page_size: The number of entries you wish to see on this page
        ///   - completion: Callback function to handle the data returned from the API (Result<[Recipe]?, APIError>)
        func get(page: Int, page_size: Int, completion: @escaping (Result<[Recipe]?, APIError>) -> Void) {
            fetchAsync(with: EItems.recipes.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [Recipe]? in
                guard let res = json as? [Recipe] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns a list of recipe ids for recipes that take the given input (item id) as an ingredient
        ///
        /// - Parameters:
        ///   - input: The item id of the input ingredient
        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func search(input: Int, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EItems.recipeSearch.request, parameters: [URLQueryItem(name: "input", value: String(input))], decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns a list of recipe ids for recipes that produce the given output (item id)
        ///
        /// - Parameters:
        ///   - output: The item id of the item that will be produced by the recipes
        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func search(output: Int, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EItems.recipeSearch.request, parameters: [URLQueryItem(name: "output", value: String(output))], decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The skins endpoint client: api.guildwars2.com/v2/skins
    class SkinsClient : Client {
        
        /// Returns a list of all skin ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EItems.skins.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the skin associated with the given id
        ///
        /// - Parameters:
        ///   - id: The ID of the skin you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<Skin?, APIError>)
        func get(id: Int, completion: @escaping (Result<Skin?, APIError>) -> Void) {
            fetchAsync(with: EItems.skins.idRequest(id: String(id)), decode: { json -> Skin? in
                guard let res = json as? Skin else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more skins associated with the given IDs
        ///
        /// - Parameters:
        ///   - ids: The ID(s) of the skin(s) you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Skin]?, APIError>)
        func get(ids: [Int], completion: @escaping (Result<[Skin]?, APIError>) -> Void) {
            fetchAsync(with: EItems.skins.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [Skin]? in
                guard let res = json as? [Skin] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated information about skins with a specified page_size
        ///
        /// - Parameters:
        ///   - page: The page number of data you wish to recieve
        ///   - page_size: The number of entries you wish to see on this page
        ///   - completion: Callback function to handle the data returned from the API (Result<[Skin]?, APIError>)
        func get(page: Int, page_size: Int, completion: @escaping (Result<[Skin]?, APIError>) -> Void) {
            fetchAsync(with: EItems.skins.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [Skin]? in
                guard let res = json as? [Skin] else { return nil }
                return res
            }, completion: completion)
        }
    }
}
