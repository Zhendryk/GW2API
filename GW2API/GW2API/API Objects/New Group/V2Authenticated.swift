//
//  V2Authenticated.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class V2Authenticated {
    let account = V2Account(type: "account")
    
    class V2Account: APIV2Object {
        
        let achievements = V2AccountAchievements(type: "account/achievements")
        let bank = V2AccountBank(type: "account/bank")
        let dungeons = V2AccountDungeons(type: "account/dungeons")
        let dyes = V2AccountDyes(type: "account/dyes")
        let finishers = V2AccountFinishers(type: "account/finishers")
        let gliders = V2AccountGliders(type: "account/gliders")
        let home = V2AccountHome()
        let inventory = V2AccountInventory(type: "account/inventory")
        let mailCarriers = V2AccountMailCarriers(type: "account/mailcarriers")
        let masteries = V2AccountMasteries(type: "account/masteries")
        let masteryPoints = V2AccountMasteryPoints(type: "account/mastery/points")
        let materials = V2AccountMaterials(type: "account/materials")
        let minis = V2AccountMinis(type: "account/minis")
        let outfits = V2AccountOutfits(type: "account/outfits")
        let pvpHeroes = V2AccountPVPHeroes(type: "account/pvp/heroes")
        let raids = V2AccountRaids(type: "account/raids")
        let recipes = V2AccountRecipes(type: "account/recipes")
        let skins = V2AccountSkins(type: "account/skins")
        let titles = V2AccountTitles(type: "account/titles")
        let wallet = V2AccountWallet(type: "account/wallet")
        let characters = V2AccountCharacters(type: "characters")
        let transactions = V2AccountTransactions(type: "commerce/transactions")
        let pvp = V2AccountPVP()
        let tokeninfo = V2AccountTokenInfo(type: "tokeninfo")
        
        func get() -> Account? {
            do {
                let json: Account? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        class V2AccountAchievements: APIV2Object {
            func get() -> [AccountAchievement]? {
                do {
                    let json: [AccountAchievement]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountBank: APIV2Object {
            func get() -> [AccountBankItem]? {
                do {
                    let json: [AccountBankItem]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountDungeons: APIV2Object {
            func get() -> [String]? {
                do {
                    let json: [String]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountDyes: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountFinishers: APIV2Object {
            func get() -> [AccountFinisher]? {
                do {
                    let json: [AccountFinisher]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountGliders: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountHome {
            let cats = V2AccountCats(type: "account/home/cats")
            let nodes = V2AccountNodes(type: "account/home/nodes")
        }
        
        class V2AccountCats: APIV2Object {
            func get() -> [AccountCat]? {
                do {
                    let json: [AccountCat]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountNodes: APIV2Object {
            func get() -> [String]? {
                do {
                    let json: [String]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountInventory: APIV2Object {
            func get() -> [AccountInventoryItem]? {
                do {
                    let json: [AccountInventoryItem]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountMailCarriers: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountMasteries: APIV2Object {
            func get() -> [AccountMastery]? {
                do {
                    let json: [AccountMastery]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountMasteryPoints: APIV2Object {
            func get() -> AccountMasteryPoints? {
                do {
                    let json: AccountMasteryPoints? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountMaterials: APIV2Object {
            func get() -> [AccountMaterial]? {
                do {
                    let json: [AccountMaterial]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountMinis: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountOutfits: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountPVPHeroes: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountRaids: APIV2Object {
            func get() -> [String]? {
                do {
                    let json: [String]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountRecipes: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountSkins: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountTitles: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountWallet: APIV2Object {
            func get() -> [Currency]? {
                do {
                    let json: [Currency]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountCharacters: APIV2Object {
            func get() -> [String]? {
                do {
                    let json: [String]? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
            
            func get(name: String) -> AccountCharacter? {
                super.addKWToURL(kwargs: [2:name])
                do {
                    let json: AccountCharacter? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountTransactions: APIV2Object {
            let current = V2AccountTransactionsCurrent(type: "commerce/transactions/current")
            let history = V2AccountTransactionsHistory(type: "commerce/transactions/history")
            
            class V2AccountTransactionsCurrent: APIV2Object {
                let buys = V2AccountCurrentBuys(type: "commerce/transactions/current/buys")
                let sells = V2AccountCurrentSells(type: "commerce/transactions/current/sells")
                
                class V2AccountCurrentBuys: APIV2Object {
                    func get() -> [AccountTransaction]? {
                        do {
                            let json: [AccountTransaction]? = try super.getArr()
                            return json
                        } catch let err {
                            print("Error: ", err)
                            return nil
                        }
                    }
                }
                
                class V2AccountCurrentSells: APIV2Object {
                    func get() -> [AccountTransaction]? {
                        do {
                            let json: [AccountTransaction]? = try super.getArr()
                            return json
                        } catch let err {
                            print("Error: ", err)
                            return nil
                        }
                    }
                }
                
            }
            
            class V2AccountTransactionsHistory: APIV2Object {
                let buys = V2AccountHistoryBuys(type: "commerce/transactions/history/buys")
                let sells = V2AccountHistorySells(type: "commerce/transactions/history/sells")
                
                class V2AccountHistoryBuys: APIV2Object {
                    func get() -> [AccountTransaction]? {
                        do {
                            let json: [AccountTransaction]? = try super.getArr()
                            return json
                        } catch let err {
                            print("Error: ", err)
                            return nil
                        }
                    }
                }
                
                class V2AccountHistorySells: APIV2Object {
                    func get() -> [AccountTransaction]? {
                        do {
                            let json: [AccountTransaction]? = try super.getArr()
                            return json
                        } catch let err {
                            print("Error: ", err)
                            return nil
                        }
                    }
                }
            }
        }
        
        class V2AccountPVP {
            let stats = V2AccountPVPStats(type: "pvp/stats")
            let games = V2AccountPVPGames(type: "pvp/games")
            let standings = V2AccountPVPStandings(type: "pvp/standings")
            
            class V2AccountPVPStats: APIV2Object {
                func get() -> AccountPVPStats? {
                    do {
                        let json: AccountPVPStats? = try super.get()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
            
            class V2AccountPVPGames: APIV2Object {
                func get() -> [Int]? {
                    do {
                        let json: [Int]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
                
                func get(kwargs: [String:String]) -> [AccountPVPGame]? {
                    do {
                        let json: [AccountPVPGame]? = try super.getKWArr(kwargs: kwargs)
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
            
            class V2AccountPVPStandings: APIV2Object {
                func get() -> AccountPVPStandings? {
                    do {
                        let json: AccountPVPStandings? = try super.get()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
        }
        
        class V2AccountTokenInfo: APIV2Object {
            func get() -> AccountToken? {
                do {
                    let json: AccountToken? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
    }
}
