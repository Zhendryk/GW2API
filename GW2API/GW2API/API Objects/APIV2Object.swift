//
//  APIV2Object.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class APIV2Object: APIBaseObject {
    override init(type: String) {
        super.init(type: type)
    }
    
    func getArr<T>() throws -> [T]? where T : Decodable {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode([T].self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
    
    func get<T>() throws -> T? where T : Decodable {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode(T.self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
    
    func getKW<T>(kwargs: [String:String]) throws -> T? where T : Decodable {
        let (data, _, error) = super.getJSON(url: nil, kwargs: kwargs)
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode(T.self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
    
    func getArrKW<T>(kwargs: [String:String]) throws -> [T]? where T : Decodable {
        let (data, _, error) = super.getJSON(url: nil, kwargs: kwargs)
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode([T].self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}

public class V2Build: APIV2Object {
    public func get() -> Build? {
        do {
            let json: Build? = try super.get()
            return json
        } catch let err {
            print("Error: ", err)
            return nil
        }
    }
}

public class V2Account: APIV2Object {
    
    public let achievements = V2AccountAchievements(type: "account/achievements")
    public let bank = V2AccountBank(type: "account/bank")
    public let dungeons = V2AccountDungeons(type: "account/dungeons")
    public let dyes = V2AccountDyes(type: "account/dyes")
    public let finishers = V2AccountFinishers(type: "account/finishers")
    public let gliders = V2AccountGliders(type: "account/gliders")
    public let home = V2AccountHome()
    public let inventory = V2AccountInventory(type: "account/inventory")
    public let mailCarriers = V2AccountMailCarriers(type: "account/mailcarriers")
    public let masteries = V2AccountMasteries(type: "account/masteries")
    public let masteryPoints = V2AccountMasteryPoints(type: "account/mastery/points")
    public let materials = V2AccountMaterials(type: "account/materials")
    public let minis = V2AccountMinis(type: "account/minis")
    public let outfits = V2AccountOutfits(type: "account/outfits")
    public let pvpHeroes = V2AccountPVPHeroes(type: "account/pvp/heroes")
    public let raids = V2AccountRaids(type: "account/raids")
    public let recipes = V2AccountRecipes(type: "account/recipes")
    public let skins = V2AccountSkins(type: "account/skins")
    public let titles = V2AccountTitles(type: "account/titles")
    public let wallet = V2AccountWallet(type: "account/wallet")
    
    public func get() -> Account? {
        do {
            let json: Account? = try super.get()
            return json
        } catch let err {
            print("Error: ", err)
            return nil
        }
    }
    
    public class V2AccountAchievements: APIV2Object {
        public func get() -> [Achievement]? {
            do {
                let json: [Achievement]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountBank: APIV2Object {
        public func get() -> [BankItem]? {
            do {
                let json: [BankItem]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountDungeons: APIV2Object {
        public func get() -> [String]? {
            do {
                let json: [String]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountDyes: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountFinishers: APIV2Object {
        public func get() -> [Finisher]? {
            do {
                let json: [Finisher]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountGliders: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountHome {
        public let cats = V2AccountCats(type: "account/home/cats")
        public let nodes = V2AccountNodes(type: "account/home/nodes")
    }
    
    public class V2AccountCats: APIV2Object {
        public func get() -> [Cat]? {
            do {
                let json: [Cat]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountNodes: APIV2Object {
        public func get() -> [String]? {
            do {
                let json: [String]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountInventory: APIV2Object {
        public func get() -> [InventoryItem]? {
            do {
                let json: [InventoryItem]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountMailCarriers: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountMasteries: APIV2Object {
        public func get() -> [Mastery]? {
            do {
                let json: [Mastery]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountMasteryPoints: APIV2Object {
        public func get() -> MasteryPoints? {
            do {
                let json: MasteryPoints? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountMaterials: APIV2Object {
        public func get() -> [Material]? {
            do {
                let json: [Material]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountMinis: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountOutfits: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountPVPHeroes: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountRaids: APIV2Object {
        public func get() -> [String]? {
            do {
                let json: [String]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountRecipes: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountSkins: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountTitles: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2AccountWallet: APIV2Object {
        public func get() -> [Currency]? {
            do {
                let json: [Currency]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
}

public class V2Commerce {
    public let listings = V2CommerceListings(type: "commerce/listings")
    public let exchange = V2CommerceExchange()
    public let prices = V2CommercePrices(type: "commerce/prices")
    public let transactions = V2CommerceTransactions()
    
    public class V2CommerceListings: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        public func get(kwargs:[String:String]) -> [CommerceListing]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: CommerceListing = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [CommerceListing] = try super.getArrKW(kwargs: kwargs) {
                        return json
                    }
                    return nil
                }
                else {
                    return nil
                }
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2CommerceExchange {
        
        public let coins = V2CommerceExchangeCoins(type: "commerce/exchange/coins")
        public let gems = V2CommerceExchangeGems(type: "commerce/exchange/gems")
        
        public class V2CommerceExchangeCoins: APIV2Object {
            public func get() -> CommerceExchange? {
                do {
                    let json: CommerceExchange? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        public class V2CommerceExchangeGems: APIV2Object {
            public func get() -> CommerceExchange? {
                do {
                    let json: CommerceExchange? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
    }
    
    public class V2CommercePrices: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        public func get(kwargs:[String:String]) -> [CommercePrices]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: CommercePrices = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [CommercePrices] = try super.getArrKW(kwargs: kwargs) {
                        return json
                    }
                    return nil
                }
                else {
                    return nil
                }
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2CommerceTransactions {
        
        public let current = V2CommerceTransactionCurrent()
        public let history = V2CommerceTransactionHistory()
        
        public class V2CommerceTransactionCurrent {
            public let buys = V2CommTransCurrBuys(type: "commerce/transactions/current/buys")
            public let sells = V2CommTransCurrSells(type: "commerce/transactions/current/sells")
            
            public class V2CommTransCurrBuys: APIV2Object {
                public func get() -> [Transaction]? {
                    do {
                        let json: [Transaction]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
            
            public class V2CommTransCurrSells: APIV2Object {
                public func get() -> [Transaction]? {
                    do {
                        let json: [Transaction]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
        }
        
        public class V2CommerceTransactionHistory {
            public let buys = V2CommTransHistBuys(type: "commerce/transactions/history/buys")
            public let sells = V2CommTransHistSells(type: "commerce/transactions/history/sells")
            
            public class V2CommTransHistBuys: APIV2Object {
                public func get() -> [Transaction]? {
                    do {
                        let json: [Transaction]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
            
            public class V2CommTransHistSells: APIV2Object {
                public func get() -> [Transaction]? {
                    do {
                        let json: [Transaction]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
        }
    }
}

public class V2Colors: APIV2Object {
    public func get() -> [Int]? {
        do {
            let json: [Int]? = try super.getArr()
            return json
        } catch let err {
            print("Error: ", err)
            return nil
        }
    }
    
    public func get(kwargs:[String:String]) -> [Colors]? {
        do {
            if kwargs["id"] != nil && kwargs["ids"] == nil {
                if let json: Colors = try super.getKW(kwargs: kwargs) {
                    return [json]
                }
                return nil
            }
            else if kwargs["ids"] != nil && kwargs["id"] == nil {
                if let json: [Colors] = try super.getArrKW(kwargs: kwargs) {
                    return json
                }
                return nil
            }
            else {
                return nil
            }
        } catch let err {
            print("Error: ", err)
            return nil
        }
    }
}

public class V2Guild {
    
    public let authenticated = V2GuildAuthenticated()
    public let permissions = V2GuildPermissions(type: "guild/permissions")
    public let search = V2GuildSearch(type: "guild/search")
    public let upgrades = V2GuildUpgrades(type: "guild/upgrades")
    
    public class V2GuildAuthenticated {
        
        //needs a get with single kwarg
        
        //Each of these below needs a single kwarg get so "guild/:id/log etc"
        public class V2GuildLog: APIV2Object {
            
        }
        
        public class V2GuildMembers: APIV2Object {
            
        }
        
        public class V2GuildRanks: APIV2Object {
            
        }
        
        public class V2GuildStash: APIV2Object {
            
        }
        
        public class V2GuildTreasury: APIV2Object {
            
        }
        
        public class V2GuildTeams: APIV2Object {
            
        }
        
        public class V2GuildUG: APIV2Object {
            
        }
    }
    
    
    
    public class V2GuildPermissions: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        public func get(kwargs:[String:String]) -> [Permissions]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: Permissions = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [Permissions] = try super.getArrKW(kwargs: kwargs) {
                        return json
                    }
                    return nil
                }
                else {
                    return nil
                }
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2GuildSearch: APIV2Object {
        //single kwarg of "name" need to add functionality for it in APIBaseObject.swift
    }
    
    public class V2GuildUpgrades: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        public func get(kwargs:[String:String]) -> [GuildUpgrade]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: GuildUpgrade = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [GuildUpgrade] = try super.getArrKW(kwargs: kwargs) {
                        return json
                    }
                    return nil
                }
                else {
                    return nil
                }
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
}

public class V2GuildEmblem {
    
    public let foregrounds = V2GuildEmblemForegrounds(type: "emblem/foregrounds")
    public let backgrounds = V2GuildEmblemBackgrounds(type: "emblem/backgrounds")
    
    public class V2GuildEmblemForegrounds: APIV2Object {
        
    }
    
    public class V2GuildEmblemBackgrounds: APIV2Object {
        
    }
}
