//
//  AuthenticatedClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/3/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import APIClient

/// The authenticated endpoint client: api.guildwars2.com/v2/...
public class AuthenticatedClient : Client {
    
    /// The account endpoint: api.guildwars2.com/v2/account (Needs API key)
    public let account: AccountClient = AccountClient()
    
    /// Sets the API key for the account endpoint
    ///
    /// - Parameter key: A valid API key generated by guildwars2.com
    override func setAPIKey(_ key: String) {
        self.account.setAPIKey(key)
    }
    
    /// The account endpoint client: api.guildwars2.com/v2/account (Needs API key)
    public class AccountClient : Client {
        
        /// The account achievements endpoint: information about an account's achievements
        public let achievements: AccountAchievementsClient = AccountAchievementsClient()
        
        /// The account bank endpoint: information about the contents of an account's bank
        public let bank: AccountBankClient = AccountBankClient()
        
        /// The account dungeons endpoint: information about the current daily cleared dungeons of an account
        public let dungeons: AccountDungeonsClient = AccountDungeonsClient()
        
        /// The account dyes endpoint: information about the dyes unlocked by an account
        public let dyes: AccountDyesClient = AccountDyesClient()
        
        /// The account finishers endpoint: information about the finishers unlocked by an account
        public let finishers: AccountFinishersCient = AccountFinishersCient()
        
        /// The account gliders endpoint: information about the gliders unlocked by an account
        public let gliders: AccountGlidersClient = AccountGlidersClient()
        
        /// The account home endpoint: information about the home instance of an account
        public let home: AccountHomeClient = AccountHomeClient()
        
        /// The account inventory endpoint: information about the shared inventory slots of an account
        public let inventory: AccountInventoryClient = AccountInventoryClient()
        
        /// The account mail carriers endpoint: information about the mail carriers unlocked by an account
        public let mailcarriers: AccountMailCarriersClient = AccountMailCarriersClient()
        
        /// The account masteries endpoint: information about the masteries unlocked by an account
        public let masteries: AccountMasteriesClient = AccountMasteriesClient()
        
        /// The account materials endpoint: information about the material storage of an account
        public let materials: AccountMaterialsClient = AccountMaterialsClient()
        
        /// The account minis endpoint: information about the minipets unlocked by an account
        public let minis: AccountMinisClient = AccountMinisClient()
        
        /// The account outfits endpoint: information about the outfits unlocked by an account
        public let outfits: AccountOutfitsClient = AccountOutfitsClient()
        
        /// The account pvp heroes endpoint: information about the PVP heroes unlocked by an account
        public let pvpHeroes: AccountPVPHeroesClient = AccountPVPHeroesClient()
        
        /// The account raids endpoint: information about the completed raid events between weekly resets of an account
        public let raids: AccountRaidsClient = AccountRaidsClient()
        
        /// The account recipes endpoint: information about the recipes unlocked by an account
        public let recipes: AccountRecipesClient = AccountRecipesClient()
        
        /// The account skins endpoint: information about the skins unlocked by an account
        public let skins: AccountSkinsClient = AccountSkinsClient()
        
        /// The account titles endpoint: information about the titles unlocked by an account
        public let titles: AccountTitlesClient = AccountTitlesClient()
        
        /// The account wallet endpoint: information about the wealth / contents of an account's wallet
        public let wallet: AccountWalletClient = AccountWalletClient()
        
        /// The account characters endpoint: information about an account's characters
        public let characters: AccountCharacterClient = AccountCharacterClient()
        
        /// The account transactions endpoint: information about an account's past and current trading post transactions
        public let transactions: AccountTransactionsClient = AccountTransactionsClient()
        
        /// The account pvp endpoint: information about an account's PVP performance / activity
        public let pvp: AccountPVPClient = AccountPVPClient()
        
        /// The account tokeninfo endpoint: information about the supplied API key
        public let tokeninfo: AccountTokenInfoClient = AccountTokenInfoClient()
        
        
        
        
        /// Sets the API key to all authenticated endpoints
        ///
        /// - Parameter key: A valid API key generated from guildwars2.com
        override func setAPIKey(_ key: String) {
            self.apiKey = key
            self.achievements.setAPIKey(key)
            self.bank.setAPIKey(key)
            self.dungeons.setAPIKey(key)
            self.dyes.setAPIKey(key)
            self.finishers.setAPIKey(key)
            self.gliders.setAPIKey(key)
            self.home.setAPIKey(key)
            self.inventory.setAPIKey(key)
            self.mailcarriers.setAPIKey(key)
            self.masteries.setAPIKey(key)
            self.materials.setAPIKey(key)
            self.minis.setAPIKey(key)
            self.outfits.setAPIKey(key)
            self.pvpHeroes.setAPIKey(key)
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
        
        /// Returns information about an account associated with an API key
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<Account?, APIError>)
        public func get(_ completion: @escaping RequestCallback<Account>) {
            self.client.send(request: GetAccount(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account achievements endpoint client: api.guildwars2.com/v2/account/achievements (Needs API key)
    public class AccountAchievementsClient : Client {
        
        /// Returns information about an account's achievement progress
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[AccountAchievement]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[AccountAchievement]>) {
            self.client.send(request: GetAccountAchievements(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account bank endpoint client: api.guildwars2.com/v2/account/bank (Needs API key)
    public class AccountBankClient : Client {
        
        /// Returns information about the bank associated with an API key
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[AccountBankItem]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[AccountBankItem?]>) {
            self.client.send(request: GetAccountBank(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account dungeons endpoint client: api.guildwars2.com/v2/account/dungeons (Needs API key)
    public class AccountDungeonsClient : Client {
        
        /// Returns a list of all dungeons cleared today by this account
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[String]>) {
            self.client.send(request: GetAccountDungeons(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account dyes endpoint client: api.guildwars2.com/v2/account/dyes (Needs API key)
    public class AccountDyesClient : Client {
        
        /// Returns a list of all the dye ids associated with this account
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetAccountDyes(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account finishers endpoint client: api.guildwars2.com/v2/account/finishers (Needs API key)
    public class AccountFinishersCient: Client {
        
        /// Returns information on all of the finishers unlocked on this account
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[AccountFinisher]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[AccountFinisher]>) {
            self.client.send(request: GetAccountFinishers(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account gliders endpoint client: api.guildwars2.com/v2/account/gliders (Needs API key)
    public class AccountGlidersClient: Client {
        
        
        /// Returns information on all of the gliders unlocked on this account
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetAccountGliders(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account home endpoint client: api.guildwars2.com/v2/account/home (Needs API key)
    public class AccountHomeClient : Client {
        /// The account home cats endpoint: api.guildwars2.com/v2/account/home/cats (Needs API key)
        public let cats: AccountHomeCatsClient = AccountHomeCatsClient()
        
        /// The account home nodes endpoint: api.guildwars2.com/v2/account/home/nodes (Needs API key)
        public let nodes: AccountHomeNodesClient = AccountHomeNodesClient()
        
        /// Sets the API key for the account/home endpoint
        ///
        /// - Parameter key: A valid API key generated by guildwars2.com
        override func setAPIKey(_ key: String) {
            self.cats.setAPIKey(key)
            self.nodes.setAPIKey(key)
        }
        
        /// The account home cats endpoint client: api.guildwars2.com/v2/account/home/cats (Needs API key)
        public class AccountHomeCatsClient : Client {
            
            /// Returns information about unlocked cats in the home instance associated with this account
            ///
            /// - Parameters:
            ///   - completion: Callback function to handle the data returned from the API (Result<[AccountCat]?, APIError>)
            public func get(_ completion: @escaping RequestCallback<[AccountCat]>) {
                self.client.send(request: GetAccountHomeCats(access_token: self.apiKey), completion: { result in
                    completion(result)
                })
            }
        }
        
        /// The account home nodes endpoint client: api.guildwars2.com/v2/account/home/nodes (Needs API key)
        public class AccountHomeNodesClient : Client {
            
            /// Returns information about unlocked gathering nodes in the home instance associated with this account
            ///
            /// - Parameters:
            ///   - completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
            public func get(_ completion: @escaping RequestCallback<[String]>) {
                self.client.send(request: GetAccountHomeNodes(access_token: self.apiKey), completion: { result in
                    completion(result)
                })
            }
        }
    }
    
    /// The account inventory endpoint client: api.guildwars2.com/v2/account/inventory (Needs API key)
    public class AccountInventoryClient : Client {
        
        /// Returns information about the shared inventory slots associated with this account
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[AccountInventoryItem]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[AccountInventoryItem]>) {
            self.client.send(request: GetAccountInventory(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account mail carriers endpoint client: api.guildwars2.com/v2/account/mailcarriers (Needs API key)
    public class AccountMailCarriersClient: Client {
        
        
        /// Returns information about the mail carriers unlocked on this account
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetAccountMailCarriers(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account masteries endpoint client: api.guildwars2.com/v2/account/masteries (Needs API key)
    public class AccountMasteriesClient : Client {
        
        /// The account mastery points endpoint: api.guildwars2.com/v2/account/mastery/points (Needs API key)
        public let points: AccountMasteryPointsClient = AccountMasteryPointsClient()
        
        /// Sets the API key for the account/masteries endpoint
        ///
        /// - Parameter key: A valid API key generated by guildwars2.com
        override func setAPIKey(_ key: String) {
            self.apiKey = key
            self.points.setAPIKey(key)
        }
        
        /// Returns information about the unlocked masteries associated with this account
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[AccountMastery]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[AccountMastery]>) {
            self.client.send(request: GetAccountMasteries(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
        
        /// The account mastery points endpoint client: api.guildwars2.com/v2/account/mastery/points (Needs API key)
        public class AccountMasteryPointsClient : Client {
            
            /// Returns a summary of the tallied up total of this account's mastery points
            ///
            /// - Parameters:
            ///   - completion: Callback function to handle the data returned from the API (Result<AccountMasteryPoints?, APIError>)
            public func get(_ completion: @escaping RequestCallback<AccountMasteryPoints>) {
                self.client.send(request: GetAccountMasteryPoints(access_token: self.apiKey), completion: { result in
                    completion(result)
                })
            }
        }
    }
    
    /// The account materials endpoint client: api.guildwars2.com/v2/account/materials (Needs API key)
    public class AccountMaterialsClient : Client {
        
        /// Returns information about the material storage associated with this account
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[AccountMaterial]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[AccountMaterial]>) {
            self.client.send(request: GetAccountMaterials(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account minis endpoint client: api.guildwars2.com/v2/account/minis (Needs API key)
    public class AccountMinisClient : Client {
        
        /// Returns information about unlocked mini pets associated with this account
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetAccountMinis(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account outfits endpoint client: api.guildwars2.com/v2/account/outfits (Needs API key)
    public class AccountOutfitsClient : Client {
        
        /// Returns information about unlocked outfits associated with this account
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetAccountOutfits(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account PVP heroes endpoint client: api.guildwars2.com/v2/account/pvp/heroes (Needs API key)
    public class AccountPVPHeroesClient: Client {
        
        
        /// Returns information about the PVP heroes unlocked on this account
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetAccountPVPHeroes(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account raids endpoint client: api.guildwars2.com/v2/account/raids (Needs API key)
    public class AccountRaidsClient : Client {
        
        /// Returns a list of completed raid events between weekly resets associated with this account
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[String]>) {
            self.client.send(request: GetAccountRaids(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account recipes endpoint client: api.guildwars2.com/v2/account/recipes (Needs API key)
    public class AccountRecipesClient : Client {
        
        /// Returns a list of unlocked recipe ids associated with this account. Resolvable against /v2/recipes
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetAccountRecipes(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account skins endpoint client: api.guildwars2.com/v2/account/skins (Needs API key)
    public class AccountSkinsClient : Client {
        
        /// Returns a list of unlocked skin ids associated with this account. Resolvable against /v2/skins
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetAccountSkins(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account titles endpoint client: api.guildwars2.com/v2/account/titles (Needs API key)
    public class AccountTitlesClient : Client {
        
        /// Returns a list of unlocked title ids associated with this account. Resolvable against /v2/titles
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetAccountTitles(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account wallet endpoint client: api.guildwars2.com/v2/account/wallet (Needs API key)
    public class AccountWalletClient : Client {
        
        /// Returns information about the wealth associated with this account
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[AccountWalletItem]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[AccountWalletItem]>) {
            self.client.send(request: GetAccountWallet(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account characters endpoint client: api.guildwars2.com/v2/characters (Needs API key)
    public class AccountCharacterClient : Client {
        
        /// Returns a list of names of characters created on this account
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[String]>) {
            self.client.send(request: GetAccountCharacterNames(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
        
        /// Returns detailed information about the specified character on this account
        ///
        /// - Parameters:
        ///   - characterName: The name of the character you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<AccountCharacter?, APIError>)
        public func get(characterName: String, _ completion: @escaping RequestCallback<AccountCharacter>) {
            self.client.send(request: GetAccountCharacter(access_token: self.apiKey, characterName: characterName), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The account transactions endpoint client: api.guildwars2.com/v2/commerce/transactions (Needs API key)
    public class AccountTransactionsClient : Client {
        
        /// The account current transactions endpoint: api.guildwars2.com/v2/commerce/transactions/current (Needs API key)
        public let current: ATCurrentClient = ATCurrentClient()
        
        /// The account transactions history endpoint: api.guildwars2.com/v2/commerce/transactions/history (Needs API key)
        public let history: ATHistoryClient = ATHistoryClient()
        
        /// Sets the API key for the commerce/transactions endpoint
        ///
        /// - Parameter key: A valid API key generated by guildwars2.com
        override func setAPIKey(_ key: String) {
            self.current.setAPIKey(key)
            self.history.setAPIKey(key)
        }
        
        /// The account current transactions endpoint client: api.guildwars2.com/v2/commerce/transactions/current (Needs API key)
        public class ATCurrentClient : Client {
            
            /// The account current buy transactions endpoint: api.guildwars2.com/v2/commerce/transactions/current/buys (Needs API key)
            public let buys: ATCBuysClient = ATCBuysClient()
            
            /// The account current buy transactions endpoint: api.guildwars2.com/v2/commerce/transactions/current/sells (Needs API key)
            public let sells: ATCSellsClient = ATCSellsClient()
            
            /// Sets the API key for the buy and sell endpoints
            ///
            /// - Parameter key: A valid API key generated by guildwars2.com
            override func setAPIKey(_ key: String) {
                self.buys.setAPIKey(key)
                self.sells.setAPIKey(key)
            }
            
            /// The account current buy transactions endpoint client: api.guildwars2.com/v2/commerce/transactions/current/buys (Needs API key)
            public class ATCBuysClient : Client {
                
                /// Returns information on this account's current buy transactions
                ///
                /// - Parameters:
                ///   - completion: Callback function to handle the data returned from the API (Result<[AccountTransaction]?, APIError>)
                public func get(_ completion: @escaping RequestCallback<[AccountTransaction]>) {
                    self.client.send(request: GetAccountCurrentBuyTransactions(access_token: self.apiKey), completion: { result in
                        completion(result)
                    })
                }
            }
            
            /// The account current sell transactions endpoint client: api.guildwars2.com/v2/commerce/transactions/current/sells (Needs API key)
            public class ATCSellsClient : Client {
                
                /// Returns informatino on this account's current sell transactions
                ///
                /// - Parameters:
                ///   - completion: Callback function to handle the data returned from the API (Result<[AcccountTransaction]?, APIError>)
                public func get(_ completion: @escaping RequestCallback<[AccountTransaction]>) {
                    self.client.send(request: GetAccountCurrentSellTransactions(access_token: self.apiKey), completion: { result in
                        completion(result)
                    })
                }
            }
        }
        
        /// The account transactions history endpoint client: api.guildwars2.com/v2/commerce/transactions/history (Needs API key)
        public class ATHistoryClient : Client {
            
            /// The account transactions history buys endpoint: api.guildwars2.com/v2/commerce/transactions/history/buys (Needs API key)
            public let buys: ATHBuysClient = ATHBuysClient()
            
            /// The account transactions history sells endpoint: api.guildwars2.com/v2/commerce/transactions/history/sells (Needs API key)
            public let sells: ATHSellsClient = ATHSellsClient()
            
            /// Sets the API key for the buy and sell endpoints
            ///
            /// - Parameter key: A valid API key generated by guildwars2.com
            override func setAPIKey(_ key: String) {
                self.buys.setAPIKey(key)
                self.sells.setAPIKey(key)
            }
            
            /// The account transactions history buys endpoint client: api.guildwars2.com/v2/commerce/transactions/history/buys (Needs API key)
            public class ATHBuysClient : Client {
                
                /// Returns information on this account's past buy transactions
                ///
                /// - Parameters:
                ///   - completion: Callback function to handle the data returned from the API (Result<[AcccountTransaction]?, APIError>)
                public func get(_ completion: @escaping RequestCallback<[AccountTransaction]>) {
                    self.client.send(request: GetAccountPastBuyTransactions(access_token: self.apiKey), completion: { result in
                        completion(result)
                    })
                }
            }
            
            /// The account transactions history sells endpoint client: api.guildwars2.com/v2/commerce/transactions/history/sells (Needs API key)
            public class ATHSellsClient : Client {
                
                /// Returns information on this account's past sell transactions
                ///
                /// - Parameters:
                ///   - completion: Callback function to handle the data returned from the API (Result<[AcccountTransaction]?, APIError>)
                public func get(_ completion: @escaping RequestCallback<[AccountTransaction]>) {
                    self.client.send(request: GetAccountPastSellTransactions(access_token: self.apiKey), completion: { result in
                        completion(result)
                    })
                }
            }
        }
    }
    
    /// The account pvp endpoint client: api.guildwars2.com/v2/pvp (Needs API key)
    public class AccountPVPClient : Client {
        
        /// The account pvp stats endpoint: api.guildwars2.com/pvp/stats (Needs API key)
        public let stats: AccountPVPStatsClient = AccountPVPStatsClient()
        
        /// The account pvp games endpoint: api.guildwars2.com/pvp/games (Needs API key)
        public let games: AccountPVPGamesClient = AccountPVPGamesClient()
        
        /// The account pvp standings endpoint: api.guildwars2.com/pvp/standings (Needs API key)
        public let standings: AccountPVPStandingsClient = AccountPVPStandingsClient()
        
        /// Sets the API key for the api endpoint
        ///
        /// - Parameter key: A valid API key generated by guildwars2.com
        override func setAPIKey(_ key: String) {
            self.stats.setAPIKey(key)
            self.games.setAPIKey(key)
            self.standings.setAPIKey(key)
        }
        
        /// The account pvp stats endpoint client: api.guildwars2.com/v2/pvp/stats (Needs API key)
        public class AccountPVPStatsClient : Client {
            
            /// Returns information on this account's performance in sPvP
            ///
            /// - Parameters:
            ///   - completion: Callback function to handle the data returned from the API (Result<AccountPVPStats?, APIError>)
            public func get(_ completion: @escaping RequestCallback<AccountPVPStats>) {
                self.client.send(request: GetAccountPVPStats(access_token: self.apiKey), completion: { result in
                    completion(result)
                })
            }
        }
        
        /// The account pvp games endpoint client: api.guildwars2.com/v2/pvp/games (Needs API key)
        public class AccountPVPGamesClient : Client {
            
            /// Returns more detailed information on this account's most recent sPvP matches
            ///
            /// - Parameters:
            ///   - completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
            public func get(_ completion: @escaping RequestCallback<[String]>) {
                self.client.send(request: GetAccountPVPGameIDs(access_token: self.apiKey), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns detailed information on a specific sPvP game this account was involved in
            ///
            /// - Parameters:
            ///   - id: The id of the game you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<[AccountPVPGame]?, APIError>)
            public func get(id: String, _ completion: @escaping RequestCallback<AccountPVPGame>) {
                self.client.send(request: GetAccountPVPGame(access_token: self.apiKey, id: id), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns detailed information on multiple specified sPvP games this account was involved in
            ///
            /// - Parameters:
            ///   - ids: The ids of the games you are searching for "id1, id2, id3... etc"
            ///   - completion: Callback function to handle the data returned from the API (Result<[AccountPVPGame]?, APIError>)
            public func get(ids: [String], _ completion: @escaping RequestCallback<[AccountPVPGame]>) {
                self.client.send(request: GetAccountPVPGames(access_token: self.apiKey, ids: ids), completion: { result in
                    completion(result)
                })
            }
        }
        
        /// The account pvp standings endpoint client: api.guildwars2.com/v2/pvp/standings (Needs API key)
        public class AccountPVPStandingsClient : Client {
            
            /// Returns the best and current standing of this account in sPvP leagues
            ///
            /// - Parameters:
            ///   - completion: Callback function to handle the data returned from the API (Result<[AccountPVPStandings]?, APIError>)
            public func get(_ completion: @escaping RequestCallback<[AccountPVPStandings]>) {
                self.client.send(request: GetAccountPVPStandings(access_token: self.apiKey), completion: { result in
                    completion(result)
                })
            }
        }
    }
    
    /// The account tokeninfo endpoint client: api.guildwars2.com/v2/tokeninfo (Needs API key)
    public class AccountTokenInfoClient : Client {
        
        /// Returns information about the supplied API key
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<AccountToken?, APIError>)
        public func get(_ completion: @escaping RequestCallback<AccountToken>) {
            self.client.send(request: GetAccountTokenInfo(access_token: self.apiKey), completion: { result in
                completion(result)
            })
        }
    }
}
