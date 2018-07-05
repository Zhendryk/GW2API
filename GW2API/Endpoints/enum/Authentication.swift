//
//  Authentication.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/3/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

enum Authentication {
    case account
    case accountAchievements
    case accountBank
    case accountDungeons
    case accountDyes
    case accountFinishers
    case accountHomeCats
    case accountHomeNodes
    case accountInventory
    case accountMasteries
    case accountMasteryPoints
    case accountMaterials
    case accountMinis
    case accountOutfits
    case accountRaids
    case accountRecipes
    case accountSkins
    case accountTitles
    case accountWallet
    case characters
    case commerceTransactionsCurrentBuys
    case commerceTransactionsCurrentSells
    case commerceTransactionsHistoryBuys
    case commerceTransactionsHistorySells
    case pvpStats
    case pvpGames
    case pvpStandings
    case tokeninfo
}

extension Authentication : Endpoint {
    var path: String {
        switch self {
        case .account: return "account"
        case .accountAchievements: return "account/achievements"
        case .accountBank: return "account/bank"
        case .accountDungeons: return "account/dungeons"
        case .accountDyes: return "account/dyes"
        case .accountFinishers: return "account/finishers"
        case .accountHomeCats: return "account/home/cats"
        case .accountHomeNodes: return "account/home/nodes"
        case .accountInventory: return "account/inventory"
        case .accountMasteries: return "account/masteries"
        case .accountMasteryPoints: return "account/mastery/points"
        case .accountMaterials: return "account/materials"
        case .accountMinis: return "account/minis"
        case .accountOutfits: return "account/outfits"
        case .accountRaids: return "account/raids"
        case .accountRecipes: return "account/recipes"
        case .accountSkins: return "account/skins"
        case .accountTitles: return "account/titles"
        case .accountWallet: return "account/wallet"
        case .characters: return "characters"
        case .commerceTransactionsCurrentBuys: return "commerce/transactions/current/buys"
        case .commerceTransactionsCurrentSells: return "commerce/transactions/current/sells"
        case .commerceTransactionsHistoryBuys: return "commerce/transactions/history/buys"
        case .commerceTransactionsHistorySells: return "commerce/transactions/history/sells"
        case .pvpStats: return "pvp/stats"
        case .pvpGames: return "pvp/games"
        case .pvpStandings: return "pvp/standings"
        case .tokeninfo: return "tokeninfo"
        }
    }
}
