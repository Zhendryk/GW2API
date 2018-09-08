//
//  AuthenticatedEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Swift_Generic_API_Client

struct GetAccount: APIRequest {
    typealias Response = Account
    
    var resource: String { return "/account" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountAchievements: APIRequest {
    typealias Response = [AccountAchievement]
    
    var resource: String { return "/account/achievements" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountBank: APIRequest {
    typealias Response = [AccountBankItem?]
    
    var resource: String { return "/account/bank" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountDungeons: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/account/dungeons" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountDyes: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/account/dyes" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountFinishers: APIRequest {
    typealias Response = [AccountFinisher]
    
    var resource: String { return "/account/finishers" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountGliders: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/account/gliders" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountHomeCats: APIRequest {
    typealias Response = [AccountCat]
    
    var resource: String { return "/account/home/cats" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountHomeNodes: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/account/home/nodes" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountInventory: APIRequest {
    typealias Response = [AccountInventoryItem]
    
    var resource: String { return "/account/inventory" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountMailCarriers: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/account/mailcarriers" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountMasteries: APIRequest {
    typealias Response = [AccountMastery]
    
    var resource: String { return "/account/masteries" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountMasteryPoints: APIRequest {
    typealias Response = AccountMasteryPoints
    
    var resource: String { return "/account/mastery/points" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountMaterials: APIRequest {
    typealias Response = [AccountMaterial]
    
    var resource: String { return "/account/materials" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountMinis: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/account/minis" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountOutfits: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/account/outfits" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountPVPHeroes: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/account/pvp/heroes" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountRaids: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/account/raids" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountRecipes: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/account/recipes" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountSkins: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/account/skins" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountTitles: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/account/titles" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountWallet: APIRequest {
    typealias Response = [AccountWalletItem]
    
    var resource: String { return "/account/wallet" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountCharacterNames: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/characters" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountCharacter: APIRequest {
    typealias Response = AccountCharacter
    
    var resource: String { return "/characters" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    private var id: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
        case id
    }
    
    init(access_token: String?, characterName: String) {
        self.access_token = access_token
        self.id = characterName
    }
}

struct GetAccountCurrentBuyTransactions: APIRequest {
    typealias Response = [AccountTransaction]
    
    var resource: String { return "/commerce/transactions/current/buys" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    private var id: Int?
    private var item_id: Int?
    private var price: Int?
    private var quantity: Int?
    private var created: String?
    private var purchased: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
        case id
        case item_id
        case price
        case quantity
        case created
        case purchased
    }
    
    init(access_token: String?, id: Int? = nil, item_id: Int? = nil, price: Int? = nil, quantity: Int? = nil, created: String? = nil, purchased: String? = nil) {
        self.access_token = access_token
        self.id = id
        self.item_id = item_id
        self.price = price
        self.quantity = quantity
        self.created = created
        self.purchased = purchased
    }
}

struct GetAccountCurrentSellTransactions: APIRequest {
    typealias Response = [AccountTransaction]
    
    var resource: String { return "/commerce/transactions/current/sells" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    private var id: Int?
    private var item_id: Int?
    private var price: Int?
    private var quantity: Int?
    private var created: String?
    private var purchased: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
        case id
        case item_id
        case price
        case quantity
        case created
        case purchased
    }
    
    init(access_token: String?, id: Int? = nil, item_id: Int? = nil, price: Int? = nil, quantity: Int? = nil, created: String? = nil, purchased: String? = nil) {
        self.access_token = access_token
        self.id = id
        self.item_id = item_id
        self.price = price
        self.quantity = quantity
        self.created = created
        self.purchased = purchased
    }
}

struct GetAccountPastBuyTransactions: APIRequest {
    typealias Response = [AccountTransaction]
    
    var resource: String { return "/commerce/transactions/history/buys" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    private var id: Int?
    private var item_id: Int?
    private var price: Int?
    private var quantity: Int?
    private var created: String?
    private var purchased: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
        case id
        case item_id
        case price
        case quantity
        case created
        case purchased
    }
    
    init(access_token: String?, id: Int? = nil, item_id: Int? = nil, price: Int? = nil, quantity: Int? = nil, created: String? = nil, purchased: String? = nil) {
        self.access_token = access_token
        self.id = id
        self.item_id = item_id
        self.price = price
        self.quantity = quantity
        self.created = created
        self.purchased = purchased
    }
}

struct GetAccountPastSellTransactions: APIRequest {
    typealias Response = [AccountTransaction]
    
    var resource: String { return "/commerce/transactions/history/sells" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    private var id: Int?
    private var item_id: Int?
    private var price: Int?
    private var quantity: Int?
    private var created: String?
    private var purchased: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
        case id
        case item_id
        case price
        case quantity
        case created
        case purchased
    }
    
    init(access_token: String?, id: Int? = nil, item_id: Int? = nil, price: Int? = nil, quantity: Int? = nil, created: String? = nil, purchased: String? = nil) {
        self.access_token = access_token
        self.id = id
        self.item_id = item_id
        self.price = price
        self.quantity = quantity
        self.created = created
        self.purchased = purchased
    }
}

struct GetAccountPVPStats: APIRequest {
    typealias Response = AccountPVPStats
    
    var resource: String { return "/pvp/stats" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountPVPGameIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/pvp/games" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountPVPGame: APIRequest {
    typealias Response = AccountPVPGame
    
    var resource: String { return "/pvp/games" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    private var id: String
    
    private enum CodingKeys: String, CodingKey {
        case access_token
        case id
    }
    
    init(access_token: String?, id: String) {
        self.access_token = access_token
        self.id = id
    }
}

struct GetAccountPVPGames: APIRequest {
    typealias Response = [AccountPVPGame]
    
    var resource: String { return "/pvp/games" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    private var ids: [String]
    
    private enum CodingKeys: String, CodingKey {
        case access_token
        case ids
    }
    
    init(access_token: String?, ids: [String]) {
        self.access_token = access_token
        self.ids = ids
    }
}

struct GetAccountPVPStandings: APIRequest {
    typealias Response = [AccountPVPStandings]
    
    var resource: String { return "/pvp/standings" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}

struct GetAccountTokenInfo: APIRequest {
    typealias Response = AccountToken
    
    var resource: String { return "/tokeninfo" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String?) {
        self.access_token = access_token
    }
}
