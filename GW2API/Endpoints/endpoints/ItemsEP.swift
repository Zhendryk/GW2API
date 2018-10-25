//
//  ItemsEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import GenericAPIClient

struct GetItemIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/items" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetItem: APIRequest {
    typealias Response = Item
    
    var resource: String { return "/items" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: Int? = nil) {
        self.id = id
    }
}

struct GetItems: APIRequest {
    typealias Response = [Item]
    
    var resource: String { return "/items" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var ids: [Int]?
    var page: Int?
    var page_size: Int?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
    }
}

struct GetFinisherIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/finishers" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetFinisher: APIRequest {
    typealias Response = Finisher
    
    var resource: String { return "/finishers" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: Int? = nil) {
        self.id = id
    }
}

struct GetFinishers: APIRequest {
    typealias Response = [Finisher]
    
    var resource: String { return "/finishers" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var ids: [Int]?
    var page: Int?
    var page_size: Int?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
    }
}

struct GetItemStatsIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/itemstats" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetItemStats: APIRequest {
    typealias Response = ItemStats
    
    var resource: String { return "/itemstats" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: Int? = nil) {
        self.id = id
    }
}

struct GetItemsStats: APIRequest {
    typealias Response = [ItemStats]
    
    var resource: String { return "/itemstats" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var ids: [Int]?
    var page: Int?
    var page_size: Int?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
    }
}

struct GetMaterialIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/materials" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetMaterial: APIRequest {
    typealias Response = Material
    
    var resource: String { return "/materials" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: Int? = nil) {
        self.id = id
    }
}

struct GetMaterials: APIRequest {
    typealias Response = [Material]
    
    var resource: String { return "/materials" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var ids: [Int]?
    var page: Int?
    var page_size: Int?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
    }
}

struct GetPVPAmuletIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/pvp/amulets" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetPVPAmulet: APIRequest {
    typealias Response = PVPAmulet
    
    var resource: String { return "/pvp/amulets" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: Int? = nil) {
        self.id = id
    }
}

struct GetPVPAmulets: APIRequest {
    typealias Response = [PVPAmulet]
    
    var resource: String { return "/pvp/amulets" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var ids: [Int]?
    var page: Int?
    var page_size: Int?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
    }
}

struct GetRecipeIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/recipes" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetRecipe: APIRequest {
    typealias Response = Recipe
    
    var resource: String { return "/recipes" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: Int? = nil) {
        self.id = id
    }
}

struct GetRecipes: APIRequest {
    typealias Response = [Recipe]
    
    var resource: String { return "/recipes" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var ids: [Int]?
    var page: Int?
    var page_size: Int?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
    }
}

struct SearchRecipes: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/recipes/search" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var input: Int?
    var output: Int?
    
    private enum CodingKeys: String, CodingKey {
        case input
        case output
    }
    
    init(input: Int? = nil, output: Int? = nil) {
        self.input = input
        self.output = output
    }
}

struct GetSkinIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/skins" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetSkin: APIRequest {
    typealias Response = Skin
    
    var resource: String { return "/skins" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: Int? = nil) {
        self.id = id
    }
}

struct GetSkins: APIRequest {
    typealias Response = [Skin]
    
    var resource: String { return "/skins" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    var ids: [Int]?
    var page: Int?
    var page_size: Int?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
    }
}
