//
//  Authenticated.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/3/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class AuthenticatedClient : Client {
    
    let account: AccountClient = AccountClient()

    override func setAPIKey(_ key: String) {
        self.account.setAPIKey(key)
    }
    
    class AccountClient : Client {
        let achievements: AccountAchievementsClient = AccountAchievementsClient()
        let bank: AccountBankClient = AccountBankClient()
        let dungeons: AccountDungeonsClient = AccountDungeonsClient()
        let dyes: AccountDyesClient = AccountDyesClient()
        let finishers: AccountFinishersCient = AccountFinishersCient()
        let home: AccountHomeClient = AccountHomeClient()
        let inventory: AccountInventoryClient = AccountInventoryClient()
        let masteries: AccountMasteriesClient = AccountMasteriesClient()
        let materials: AccountMaterialsClient = AccountMaterialsClient()
        let minis: AccountMinisClient = AccountMinisClient()
        let outfits: AccountOutfitsClient = AccountOutfitsClient()
        let raids: AccountRaidsClient = AccountRaidsClient()
        let recipes: AccountRecipesClient = AccountRecipesClient()
        let skins: AccountSkinsClient = AccountSkinsClient()
        let titles: AccountTitlesClient = AccountTitlesClient()
        let wallet: AccountWalletClient = AccountWalletClient()
        let characters: AccountCharacterClient = AccountCharacterClient()
        let transactions: AccountTransactionsClient = AccountTransactionsClient()
        let pvp: AccountPVPClient = AccountPVPClient()
        let tokeninfo: AccountTokenInfoClient = AccountTokenInfoClient()
        
        override func setAPIKey(_ key: String) {
            self.apiKey = key
            self.achievements.setAPIKey(key)
            self.bank.setAPIKey(key)
            self.dungeons.setAPIKey(key)
            self.dyes.setAPIKey(key)
            self.finishers.setAPIKey(key)
            self.home.setAPIKey(key)
            self.inventory.setAPIKey(key)
            self.masteries.setAPIKey(key)
            self.materials.setAPIKey(key)
            self.minis.setAPIKey(key)
            self.outfits.setAPIKey(key)
            self.raids.setAPIKey(key)
            self.recipes.setAPIKey(key)
            self.skins.setAPIKey(key)
            self.titles.setAPIKey(key)
            self.wallet.setAPIKey(key)
            self.characters.setAPIKey(key)
            self.transactions.setAPIKey(key)
            self.pvp.setAPIKey(key)
            self.tokeninfo.setAPIKey(key)
        }
        
        func get(from endpoint: EAuthentication = .account, completion: @escaping (Result<Account?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> Account? in
                guard let result = json as? Account else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountAchievementsClient : Client {
        func get(from endpoint: EAuthentication = .accountAchievements, completion: @escaping (Result<[AccountAchievement]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountAchievement]? in
                guard let result = json as? [AccountAchievement] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountBankClient : Client {
        func get(from endpoint: EAuthentication = .accountBank, completion: @escaping (Result<[AccountBankItem?]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountBankItem?]? in
                guard let result = json as? [AccountBankItem?] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountDungeonsClient : Client {
        func get(from endpoint: EAuthentication = .accountDungeons, completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountDyesClient : Client {
        func get(from endpoint: EAuthentication = .accountDyes, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountFinishersCient: Client {
        func get(from endpoint: EAuthentication = .accountFinishers, completion: @escaping (Result<[AccountFinisher]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountFinisher]? in
                guard let result = json as? [AccountFinisher] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountHomeClient : Client {
        
        let cats: AccountHomeCatsClient = AccountHomeCatsClient()
        let nodes: AccountHomeNodesClient = AccountHomeNodesClient()
        
        override func setAPIKey(_ key: String) {
            self.cats.setAPIKey(key)
            self.nodes.setAPIKey(key)
        }
        
        class AccountHomeCatsClient : Client {
            func get(from endpoint: EAuthentication = .accountHomeCats, completion: @escaping (Result<[AccountCat]?, APIError>) -> Void) {
                fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountCat]? in
                    guard let result = json as? [AccountCat] else { return nil }
                    return result
                }, completion: completion)
            }
        }
        
        class AccountHomeNodesClient : Client {
            func get(from endpoint: EAuthentication = .accountHomeNodes, completion: @escaping (Result<[String]?, APIError>) -> Void) {
                fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [String]? in
                    guard let result = json as? [String] else { return nil }
                    return result
                }, completion: completion)
            }
        }
    }
    
    class AccountInventoryClient : Client {
        func get(from endpoint: EAuthentication = .accountInventory, completion: @escaping (Result<[AccountInventoryItem?]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountInventoryItem?]? in
                guard let result = json as? [AccountInventoryItem?] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountMasteriesClient : Client {
        
        let points: AccountMasteryPointsClient = AccountMasteryPointsClient()
        
        override func setAPIKey(_ key: String) {
            self.apiKey = key
            self.points.setAPIKey(key)
        }
        
        func get(from endpoint: EAuthentication = .accountMasteries, completion: @escaping (Result<[AccountMastery]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountMastery]? in
                guard let result = json as? [AccountMastery] else { return nil }
                return result
            }, completion: completion)
        }
        
        class AccountMasteryPointsClient : Client {
            func get(from endpoint: EAuthentication = .accountMasteryPoints, completion: @escaping (Result<AccountMasteryPoints?, APIError>) -> Void) {
                fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> AccountMasteryPoints? in
                    guard let result = json as? AccountMasteryPoints else { return nil }
                    return result
                }, completion: completion)
            }
        }
    }
    
    class AccountMaterialsClient : Client {
        func get(from endpoint: EAuthentication = .accountMaterials, completion: @escaping (Result<[AccountMaterial]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountMaterial]? in
                guard let result = json as? [AccountMaterial] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountMinisClient : Client {
        func get(from endpoint: EAuthentication = .accountMinis, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountOutfitsClient : Client {
        func get(from endpoint: EAuthentication = .accountOutfits, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountRaidsClient : Client {
        func get(from endpoint: EAuthentication = .accountRaids, completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountRecipesClient : Client {
        func get(from endpoint: EAuthentication = .accountRecipes, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountSkinsClient : Client {
        func get(from endpoint: EAuthentication = .accountSkins, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountTitlesClient : Client {
        func get(from endpoint: EAuthentication = .accountTitles, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountWalletClient : Client {
        func get(from endpoint: EAuthentication = .accountWallet, completion: @escaping (Result<[AccountWalletItem]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountWalletItem]? in
                guard let result = json as? [AccountWalletItem] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountCharacterClient : Client {
        func get(from endpoint: EAuthentication = .characters, completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }
        
        func get(characterName: String, from endpoint: EAuthentication = .characters, completion: @escaping (Result<AccountCharacter?, APIError>) -> Void) {
            var request = endpoint.request
            request.url?.appendPathComponent(characterName)
            fetchAsync(with: request, needsAuthorization: true, decode: { json -> AccountCharacter? in
                guard let result = json as? AccountCharacter else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountTransactionsClient : Client {

        let current: ATCurrentClient = ATCurrentClient()
        let history: ATHistoryClient = ATHistoryClient()
        
        override func setAPIKey(_ key: String) {
            self.current.setAPIKey(key)
            self.history.setAPIKey(key)
        }
        
        class ATCurrentClient : Client {
            let buys: ATCBuysClient = ATCBuysClient()
            let sells: ATCSellsClient = ATCSellsClient()
            
            override func setAPIKey(_ key: String) {
                self.buys.setAPIKey(key)
                self.sells.setAPIKey(key)
            }
            
            class ATCBuysClient : Client {
                func get(from endpoint: EAuthentication = .commerceTransactionsCurrentBuys, completion: @escaping (Result<[AccountTransaction]?, APIError>) -> Void) {
                    fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountTransaction]? in
                        guard let result = json as? [AccountTransaction] else { return nil }
                        return result
                    }, completion: completion)
                }
            }
            
            class ATCSellsClient : Client {
                func get(from endpoint: EAuthentication = .commerceTransactionsCurrentSells, completion: @escaping (Result<[AccountTransaction]?, APIError>) -> Void) {
                    fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountTransaction]? in
                        guard let result = json as? [AccountTransaction] else { return nil }
                        return result
                    }, completion: completion)
                }
            }
        }
        
        class ATHistoryClient : Client {
            let buys: ATHBuysClient = ATHBuysClient()
            let sells: ATHSellsClient = ATHSellsClient()
            
            override func setAPIKey(_ key: String) {
                self.buys.setAPIKey(key)
                self.sells.setAPIKey(key)
            }
            
            class ATHBuysClient : Client {
                func get(from endpoint: EAuthentication = .commerceTransactionsHistoryBuys, completion: @escaping (Result<[AccountTransaction]?, APIError>) -> Void) {
                    fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountTransaction]? in
                        guard let result = json as? [AccountTransaction] else { return nil }
                        return result
                    }, completion: completion)
                }
            }
            
            class ATHSellsClient : Client {
                func get(from endpoint: EAuthentication = .commerceTransactionsHistorySells, completion: @escaping (Result<[AccountTransaction]?, APIError>) -> Void) {
                    fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountTransaction]? in
                        guard let result = json as? [AccountTransaction] else { return nil }
                        return result
                    }, completion: completion)
                }
            }
        }
    }
    
    class AccountPVPClient : Client {
        let stats: AccountPVPStatsClient = AccountPVPStatsClient()
        let games: AccountPVPGamesClient = AccountPVPGamesClient()
        let standings: AccountPVPStandingsClient = AccountPVPStandingsClient()
        
        override func setAPIKey(_ key: String) {
            self.stats.setAPIKey(key)
            self.games.setAPIKey(key)
            self.standings.setAPIKey(key)
        }
        
        class AccountPVPStatsClient : Client {
            func get(from endpoint: EAuthentication = .pvpStats, completion: @escaping (Result<AccountPVPStats?, APIError>) -> Void) {
                fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> AccountPVPStats? in
                    guard let result = json as? AccountPVPStats else { return nil }
                    return result
                }, completion: completion)
            }
        }
        
        class AccountPVPGamesClient : Client {
            func get(from endpoint: EAuthentication = .pvpGames, completion: @escaping (Result<[String]?, APIError>) -> Void) {
                fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [String]? in
                    guard let result = json as? [String] else { return nil }
                    return result
                }, completion: completion)
            }
            
            func get(parameters: [URLQueryItem], from endpoint: EAuthentication = .pvpGames, completion: @escaping (Result<[AccountPVPGame]?, APIError>) -> Void) {
                let request = addQueryParameters(to: endpoint.request, parameters: parameters)
                switch request {
                case .success(let result):
                    fetchAsync(with: result, needsAuthorization: true, decode: { json -> [AccountPVPGame]? in
                        guard let res = json as? [AccountPVPGame] else { return nil }
                        return res
                    }, completion: completion)
                case .failure(let error):
                    print(error)
                    return
                }
            }
        }
        
        class AccountPVPStandingsClient : Client {
            func get(from endpoint: EAuthentication = .pvpStandings, completion: @escaping (Result<[AccountPVPStandings]?, APIError>) -> Void) {
                fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountPVPStandings]? in
                    guard let result = json as? [AccountPVPStandings] else { return nil }
                    return result
                }, completion: completion)
            }
        }
    }
    
    class AccountTokenInfoClient : Client {
        func get(from endpoint: EAuthentication = .tokeninfo, completion: @escaping (Result<AccountToken?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> AccountToken? in
                guard let result = json as? AccountToken else { return nil }
                return result
            }, completion: completion)
        }
    }
}
