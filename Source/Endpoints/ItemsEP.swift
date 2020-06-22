//
//  ItemsEP.swift
//  GW2API
//
//  Created by Zhendryk on 9/7/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
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
    
    private var id: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: Int? = nil, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetItems: APIRequest {
    typealias Response = [Item]
    
    var resource: String { return "/items" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    private var page: Int?
    private var page_size: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
        case lang
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
        self.lang = lang
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
    
    private var id: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: Int? = nil, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetFinishers: APIRequest {
    typealias Response = [Finisher]
    
    var resource: String { return "/finishers" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    private var page: Int?
    private var page_size: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
        case lang
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
        self.lang = lang
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
    
    private var id: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: Int? = nil, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetItemsStats: APIRequest {
    typealias Response = [ItemStats]
    
    var resource: String { return "/itemstats" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    private var page: Int?
    private var page_size: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
        case lang
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
        self.lang = lang
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
    
    private var id: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: Int? = nil, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetMaterials: APIRequest {
    typealias Response = [Material]
    
    var resource: String { return "/materials" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    private var page: Int?
    private var page_size: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
        case lang
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
        self.lang = lang
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
    
    private var id: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: Int? = nil, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetPVPAmulets: APIRequest {
    typealias Response = [PVPAmulet]
    
    var resource: String { return "/pvp/amulets" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    private var page: Int?
    private var page_size: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
        case lang
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
        self.lang = lang
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
    
    private var id: Int?
    
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
    
    private var ids: [Int]?
    private var page: Int?
    private var page_size: Int?
    
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
    
    private var input: Int?
    private var output: Int?
    
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
    
    private var id: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: Int? = nil, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetSkins: APIRequest {
    typealias Response = [Skin]
    
    var resource: String { return "/skins" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    private var page: Int?
    private var page_size: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
        case lang
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
        self.lang = lang
    }
}
