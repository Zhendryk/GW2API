//
//  V2Authenticated.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class V2Authenticated {
    public let account = V2Account(type: "account")
    
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
        public let characters = V2AccountCharacters(type: "characters")
        public let transactions = V2AccountTransactions(type: "commerce/transactions")
        public let pvp = V2AccountPVP()
        public let tokeninfo = V2AccountTokenInfo(type: "tokeninfo")
        
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
        
        public class V2AccountCharacters: APIV2Object {
            
        }
        
        public class V2AccountTransactions: APIV2Object {
            
        }
        
        public class V2AccountPVP {
            public let stats = V2AccountPVPStats(type: "pvp/stats")
            public let games = V2AccountPVPGames(type: "pvp/games")
            public let standings = V2AccountPVPStandings(type: "pvp/standings")
            
            public class V2AccountPVPStats: APIV2Object {
                
            }
            
            public class V2AccountPVPGames: APIV2Object {
                
            }
            
            public class V2AccountPVPStandings: APIV2Object {
                
            }
        }
        
        public class V2AccountTokenInfo: APIV2Object {
            
        }
    }
}
