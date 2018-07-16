//
//  EItems.swift
//  GW2API
//
//  Created by Zhendryk on 7/12/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

enum EItems {
    case items
    case finishers
    case itemstats
    case materials
    case pvpamulets
    case recipes
    case recipeSearch
    case skins
}

extension EItems : Endpoint {
    var path: String {
        switch self {
        case .items: return "items"
        case .finishers: return "finishers"
        case .itemstats: return "itemstats"
        case .materials: return "materials"
        case .pvpamulets: return "pvp/amulets"
        case .recipes: return "recipes"
        case .recipeSearch: return "recipes/search"
        case .skins: return "skins"
        }
    }
}
