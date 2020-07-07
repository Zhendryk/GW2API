//
//  ItemsEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation
import APIClient

class GetItemIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/items")
    }
}

class GetItem: GetRequest<Item> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/items", urlQueryParameters: urlQP)
    }
}

class GetItems: GetRequest<[Item]> {
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil, getAll: Bool? = false) {
        var urlQP: [URLQueryItem] = []
        if let getAll = getAll {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.string("all").description))
        }
        else if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/items", urlQueryParameters: urlQP)
    }
}

class GetFinisherIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/finishers")
    }
}

class GetFinisher: GetRequest<Finisher> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/finishers", urlQueryParameters: urlQP)
    }
}

class GetFinishers: GetRequest<[Finisher]> {
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/finishers", urlQueryParameters: urlQP)
    }
}

class GetItemStatsIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/itemstats")
    }
}

class GetItemStats: GetRequest<ItemStats> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/itemstats", urlQueryParameters: urlQP)
    }
}

class GetItemsStats: GetRequest<[ItemStats]> {
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/itemstats", urlQueryParameters: urlQP)
    }
}

class GetMaterialIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/materials")
    }
}

class GetMaterial: GetRequest<Material> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/materials", urlQueryParameters: urlQP)
    }
}

class GetMaterials: GetRequest<[Material]> {
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/materials", urlQueryParameters: urlQP)
    }
}

class GetPVPAmuletIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/pvp/amulets")
    }
}

class GetPVPAmulet: GetRequest<PVPAmulet> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/pvp/amulets", urlQueryParameters: urlQP)
    }
}

class GetPVPAmulets: GetRequest<[PVPAmulet]> {
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/pvp/amulets", urlQueryParameters: urlQP)
    }
}

class GetRecipeIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/recipes")
    }
}

class GetRecipe: GetRequest<Recipe> {
    init(id: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        super.init(resource: "/recipes", urlQueryParameters: urlQP)
    }
}

class GetRecipes: GetRequest<[Recipe]> {
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        super.init(resource: "/recipes", urlQueryParameters: urlQP)
    }
}

class SearchRecipes: GetRequest<[Int]> {
    init(input: Int? = nil, output: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let input = input {
            urlQP.append(URLQueryItem(name: "input", value: HTTPParameter.int(input).description))
        }
        if let output = output {
            urlQP.append(URLQueryItem(name: "output", value: HTTPParameter.int(output).description))
        }
        super.init(resource: "/recipes/search", urlQueryParameters: urlQP)
    }
}

class GetSkinIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/skins")
    }
}

class GetSkin: GetRequest<Skin> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/skins", urlQueryParameters: urlQP)
    }
}

class GetSkins: GetRequest<[Skin]> {
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/skins", urlQueryParameters: urlQP)
    }
}
