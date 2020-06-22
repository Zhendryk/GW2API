//
//  AccountRequests.swift
//  GW2API
//
//  Created by Jonathan Bailey on 6/21/20.
//  Copyright © 2020 Jonathan Bailey. All rights reserved.
//

import APIClient

class GetAccount: GetRequest<Account> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account", urlQueryParameters: urlQP)
    }
}

class GetAccountAchievements: GetRequest<[AccountAchievement]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/achievements", urlQueryParameters: urlQP)
    }
}

class GetAccountBank: GetRequest<[AccountBankItem?]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/bank", urlQueryParameters: urlQP)
    }
}

// TODO: https://wiki.guildwars2.com/wiki/API:2/account/buildstorage

// TODO: https://wiki.guildwars2.com/wiki/API:2/account/dailycrafting

class GetAccountDungeons: GetRequest<[String]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/dungeons", urlQueryParameters: urlQP)
    }
}

class GetAccountDyes: GetRequest<[Int]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/dyes", urlQueryParameters: urlQP)
    }
}

// TODO: https://wiki.guildwars2.com/wiki/API:2/account/emotes

class GetAccountFinishers: GetRequest<[AccountFinisher]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/finishers", urlQueryParameters: urlQP)
    }
}

class GetAccountGliders: GetRequest<[Int]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/gliders", urlQueryParameters: urlQP)
    }
}

class GetAccountHomeCats: GetRequest<[AccountCat]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/home/cats", urlQueryParameters: urlQP)
    }
}

class GetAccountHomeNodes: GetRequest<[String]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/home/nodes", urlQueryParameters: urlQP)
    }
}

class GetAccountInventory: GetRequest<[AccountInventoryItem]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/inventory", urlQueryParameters: urlQP)
    }
}

// TODO: https://wiki.guildwars2.com/wiki/API:2/account/luck

class GetAccountMailCarriers: GetRequest<[Int]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/mailcarriers", urlQueryParameters: urlQP)
    }
}

// TODO: https://wiki.guildwars2.com/wiki/API:2/account/mapchests

class GetAccountMasteries: GetRequest<[AccountMastery]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/masteries", urlQueryParameters: urlQP)
    }
}

class GetAccountMasteryPoints: GetRequest<AccountMasteryPoints> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/mastery/points", urlQueryParameters: urlQP)
    }
}

class GetAccountMaterials: GetRequest<[AccountMaterial]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/materials", urlQueryParameters: urlQP)
    }
}

class GetAccountMinis: GetRequest<[Int]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/minis", urlQueryParameters: urlQP)
    }
}

// TODO: https://wiki.guildwars2.com/wiki/API:2/account/mounts/skins

// TODO: https://wiki.guildwars2.com/wiki/API:2/account/mounts/types

// TODO: https://wiki.guildwars2.com/wiki/API:2/account/novelties

class GetAccountOutfits: GetRequest<[Int]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/outfits", urlQueryParameters: urlQP)
    }
}

class GetAccountPVPHeroes: GetRequest<[Int]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/pvp/heroes", urlQueryParameters: urlQP)
    }
}

class GetAccountRaids: GetRequest<[String]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/raids", urlQueryParameters: urlQP)
    }
}

class GetAccountRecipes: GetRequest<[Int]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/recipes", urlQueryParameters: urlQP)
    }
}

class GetAccountSkins: GetRequest<[Int]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/skins", urlQueryParameters: urlQP)
    }
}

class GetAccountTitles: GetRequest<[Int]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/titles", urlQueryParameters: urlQP)
    }
}

class GetAccountWallet: GetRequest<[AccountWalletItem]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/account/wallet", urlQueryParameters: urlQP)
    }
}

// TODO: https://wiki.guildwars2.com/wiki/API:2/account/worldbosses

class GetAccountCurrentBuyTransactions: GetRequest<[AccountTransaction]> {
    init(access_token: String?, id: Int? = nil, item_id: Int? = nil, price: Int? = nil, quantity: Int? = nil, created: String? = nil, purchased: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let item_id = item_id {
            urlQP.append(URLQueryItem(name: "item_id", value: HTTPParameter.int(item_id).description))
        }
        if let price = price {
            urlQP.append(URLQueryItem(name: "price", value: HTTPParameter.int(price).description))
        }
        if let quantity = quantity {
            urlQP.append(URLQueryItem(name: "quantity", value: HTTPParameter.int(quantity).description))
        }
        if let created = created {
            urlQP.append(URLQueryItem(name: "created", value: HTTPParameter.string(created).description))
        }
        if let purchased = purchased {
            urlQP.append(URLQueryItem(name: "purchased", value: HTTPParameter.string(purchased).description))
        }
        super.init(resource: "/commerce/transactions/current/buys", urlQueryParameters: urlQP)
    }
}

class GetAccountCurrentSellTransactions: GetRequest<[AccountTransaction]> {
    init(access_token: String?, id: Int? = nil, item_id: Int? = nil, price: Int? = nil, quantity: Int? = nil, created: String? = nil, purchased: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let item_id = item_id {
            urlQP.append(URLQueryItem(name: "item_id", value: HTTPParameter.int(item_id).description))
        }
        if let price = price {
            urlQP.append(URLQueryItem(name: "price", value: HTTPParameter.int(price).description))
        }
        if let quantity = quantity {
            urlQP.append(URLQueryItem(name: "quantity", value: HTTPParameter.int(quantity).description))
        }
        if let created = created {
            urlQP.append(URLQueryItem(name: "created", value: HTTPParameter.string(created).description))
        }
        if let purchased = purchased {
            urlQP.append(URLQueryItem(name: "purchased", value: HTTPParameter.string(purchased).description))
        }
        super.init(resource: "/commerce/transactions/current/sells", urlQueryParameters: urlQP)
    }
}

class GetAccountPastBuyTransactions: GetRequest<[AccountTransaction]> {
    init(access_token: String?, id: Int? = nil, item_id: Int? = nil, price: Int? = nil, quantity: Int? = nil, created: String? = nil, purchased: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let item_id = item_id {
            urlQP.append(URLQueryItem(name: "item_id", value: HTTPParameter.int(item_id).description))
        }
        if let price = price {
            urlQP.append(URLQueryItem(name: "price", value: HTTPParameter.int(price).description))
        }
        if let quantity = quantity {
            urlQP.append(URLQueryItem(name: "quantity", value: HTTPParameter.int(quantity).description))
        }
        if let created = created {
            urlQP.append(URLQueryItem(name: "created", value: HTTPParameter.string(created).description))
        }
        if let purchased = purchased {
            urlQP.append(URLQueryItem(name: "purchased", value: HTTPParameter.string(purchased).description))
        }
        super.init(resource: "/commerce/transactions/history/buys", urlQueryParameters: urlQP)
    }
}

class GetAccountPastSellTransactions: GetRequest<[AccountTransaction]> {
    init(access_token: String?, id: Int? = nil, item_id: Int? = nil, price: Int? = nil, quantity: Int? = nil, created: String? = nil, purchased: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let item_id = item_id {
            urlQP.append(URLQueryItem(name: "item_id", value: HTTPParameter.int(item_id).description))
        }
        if let price = price {
            urlQP.append(URLQueryItem(name: "price", value: HTTPParameter.int(price).description))
        }
        if let quantity = quantity {
            urlQP.append(URLQueryItem(name: "quantity", value: HTTPParameter.int(quantity).description))
        }
        if let created = created {
            urlQP.append(URLQueryItem(name: "created", value: HTTPParameter.string(created).description))
        }
        if let purchased = purchased {
            urlQP.append(URLQueryItem(name: "purchased", value: HTTPParameter.string(purchased).description))
        }
        super.init(resource: "/commerce/transactions/history/sells", urlQueryParameters: urlQP)
    }
}

class GetAccountPVPStats: GetRequest<AccountPVPStats> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/pvp/stats", urlQueryParameters: urlQP)
    }
}

class GetAccountPVPGameIDs: GetRequest<[String]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/pvp/games", urlQueryParameters: urlQP)
    }
}

class GetAccountPVPGame: GetRequest<AccountPVPGame> {
    init(access_token: String?, id: String) {
        var urlQP: [URLQueryItem] = [URLQueryItem(name: "id", value: HTTPParameter.string(id).description)]
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/pvp/games", urlQueryParameters: urlQP)
    }
}

class GetAccountPVPGames: GetRequest<[AccountPVPGame]> {
    init(access_token: String?, ids: [String]) {
        var urlQP: [URLQueryItem] = [URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description)]
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/pvp/games", urlQueryParameters: urlQP)
    }
}

class GetAccountPVPStandings: GetRequest<[AccountPVPStandings]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/pvp/standings", urlQueryParameters: urlQP)
    }
}

class GetAccountTokenInfo: GetRequest<AccountToken> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/tokeninfo", urlQueryParameters: urlQP)
    }
}
