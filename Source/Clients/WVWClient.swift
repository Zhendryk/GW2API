//
//  WVWClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/14/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import APIClient

/// The wvw endpoint client: api.guildwars2.com/v2/wvw
public class WVWClient : Client {
    
    /// The wvw abilities endpoint: information about world vs world abilities
    public let abilities: WVWAbilitiesClient = WVWAbilitiesClient()
    
    /// The wvw matches endpoint: information about world vs world matches
    public let matches: WVWMatchesClient = WVWMatchesClient()
    
    /// The wvw objectives endpoint: information about world vs world objectives
    public let objectives: WVWObjectivesClient = WVWObjectivesClient()
    
    /// The wvw ranks endpoint: information about world vs world ranks
    public let ranks: WVWRanksClient = WVWRanksClient()
    
    /// The wvw upgrades endpoint: information about world vs world upgrades
    public let upgrades: WVWUpgradesClient = WVWUpgradesClient()
    
    /// Sets the language of every sub endpoint
    ///
    /// - Parameter language: The language to set
    override func setLanguage(_ language: String) {
        self.abilities.setLanguage(language)
        self.matches.setLanguage(language)
        self.objectives.setLanguage(language)
        self.ranks.setLanguage(language)
        self.upgrades.setLanguage(language)
    }
    
    
    /// The wvw abilities endpoint client: api.guildwars2.com/v2/wvw/abilities
    public class WVWAbilitiesClient : Client {
        
        /// Returns a list of all wvw ability ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [Int]), APIError>)
        public func get(_ completion: @escaping APIRequestCallback<[Int]>) {
            self.client.send(request: GetWVWAbilityIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the wvw ability corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw ability you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, WVWAbility), APIError>)
        public func get(id: Int, _ completion: @escaping APIRequestCallback<WVWAbility>) {
            self.client.send(request: GetWVWAbility(id: id, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more wvw abilities corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw ability(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [WVWAbility]), APIError>)
        public func get(ids: [Int], _ completion: @escaping APIRequestCallback<[WVWAbility]>) {
            self.client.send(request: GetWVWAbilities(ids: ids, lang: lang), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The wvw matches endpoint client: api.guildwars2.com/v2/wvw/matches
    public class WVWMatchesClient : Client {
        
        /// The wvw match overview endpoint: information about world vs world match overviews
        public let overview: WVWMatchOverviewClient = WVWMatchOverviewClient()
        
        /// The wvw match scores endpoint: information about world vs world match scores
        public let scores: WVWMatchScoresClient = WVWMatchScoresClient()
        
        /// The wvw match stats endpoint: information about world vs world match statistics
        public let stats: WVWMatchStatsClient = WVWMatchStatsClient()
        
        /// Sets the language of every sub endpoint
        ///
        /// - Parameter language: The language to set
        override func setLanguage(_ language: String) {
            self.lang = language
            self.overview.setLanguage(language)
            self.scores.setLanguage(language)
            self.stats.setLanguage(language)
        }
        
        //overview scores stats, world
        
        /// Returns a list of all wvw match ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [String]), APIError>)
        public func get(_ completion: @escaping APIRequestCallback<[String]>) {
            self.client.send(request: GetWVWMatchIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the wvw match corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw match you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, WVWMatch), APIError>)
        public func get(id: String, _ completion: @escaping APIRequestCallback<WVWMatch>) {
            self.client.send(request: GetWVWMatch(id: id), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more wvw matches corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw match(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [WVWMatch]), APIError>)
        public func get(ids: [String], _ completion: @escaping APIRequestCallback<[WVWMatch]>) {
            self.client.send(request: GetWVWMatches(ids: ids), completion: { result in
                completion(result)
            })
        }
        
        /// The wvw match overview endpoint client: api.guildwars2.com/v2/wvw/matches/overview
        public class WVWMatchOverviewClient : Client {
            
            /// Returns a list of all wvw match overview ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [String]), APIError>)
            public func get(_ completion: @escaping APIRequestCallback<[String]>) {
                self.client.send(request: GetWVWMatchOverviewIDs(), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns the wvw match overview corresponding to the given id
            ///
            /// - Parameters:
            ///   - id: The id of the wvw match overview you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, WVWMatchOverview), APIError>)
            public func get(id: String, _ completion: @escaping APIRequestCallback<WVWMatchOverview>) {
                self.client.send(request: GetWVWMatchOverview(id: id, world: nil), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns the wvw match overview for the given world
            ///
            /// - Parameters:
            ///   - worldID: The ID of the world you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, WVWMatchOverview), APIError>)
            public func get(worldID: Int, _ completion: @escaping APIRequestCallback<WVWMatchOverview>) {
                self.client.send(request: GetWVWMatchOverview(id: nil, world: worldID), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns one or more wvw match overviews corresponding to the given ids
            ///
            /// - Parameters:
            ///   - ids: the id(s) of the wvw match overview(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [WVWMatchOverview]), APIError>)
            public func get(ids: [String], _ completion: @escaping APIRequestCallback<[WVWMatchOverview]>) {
                self.client.send(request: GetWVWMatchOverviews(ids: ids, world: nil), completion: { result in
                    completion(result)
                })
            }
        }
        
        /// The wvw match stats endpoint client: api.guildwars2.com/v2/wvw/matches/stats
        public class WVWMatchStatsClient : Client {
            
            /// Returns a list of all wvw match stats ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [String]), APIError>)
            public func get(_ completion: @escaping APIRequestCallback<[String]>) {
                self.client.send(request: GetWVWMatchStatsIDs(), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns the wvw match stats corresponding to the given id
            ///
            /// - Parameters:
            ///   - id: The id of the wvw match stats you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, WVWMatchStats), APIError>)
            public func get(id: String, _ completion: @escaping APIRequestCallback<WVWMatchStats>) {
                self.client.send(request: GetWVWMatchStats(id: id, world: nil), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns the wvw match stats for the given world
            ///
            /// - Parameters:
            ///   - worldID: The ID of the world you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, WVWMatchStats), APIError>)
            public func get(worldID: Int, _ completion: @escaping APIRequestCallback<WVWMatchStats>) {
                self.client.send(request: GetWVWMatchStats(id: nil, world: worldID), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns one or more wvw match stats corresponding to the given ids
            ///
            /// - Parameters:
            ///   - ids: the id(s) of the wvw match stat(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [WVWMatchStats]), APIError>)
            public func get(ids: [String], _ completion: @escaping APIRequestCallback<[WVWMatchStats]>) {
                self.client.send(request: GetWVWMatchesStats(ids: ids, world: nil), completion: { result in
                    completion(result)
                })
            }
        }
        
        /// The wvw match scores endpoint client: api.guildwars2.com/v2/wvw/matches/scores
        public class WVWMatchScoresClient : Client {
            
            /// Returns a list of all wvw match score ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [String]), APIError>)
            public func get(_ completion: @escaping APIRequestCallback<[String]>) {
                self.client.send(request: GetWVWMatchScoreIDs(), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns the wvw match score corresponding to the given id
            ///
            /// - Parameters:
            ///   - id: The id of the wvw match score you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, WVWMatchScore), APIError>)
            public func get(id: String, _ completion: @escaping APIRequestCallback<WVWMatchScore>) {
                self.client.send(request: GetWVWMatchScore(id: id, world: nil), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns the wvw match score for the given world
            ///
            /// - Parameters:
            ///   - worldID: The ID of the world you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, WVWMatchScore), APIError>)
            public func get(worldID: Int, _ completion: @escaping APIRequestCallback<WVWMatchScore>) {
                self.client.send(request: GetWVWMatchScore(id: nil, world: worldID), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns one or more wvw match scores corresponding to the given ids
            ///
            /// - Parameters:
            ///   - ids: the id(s) of the wvw match score(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [WVWMatchScore]), APIError>)
            public func get(ids: [String], _ completion: @escaping APIRequestCallback<[WVWMatchScore]>) {
                self.client.send(request: GetWVWMatchScores(ids: ids, world: nil), completion: { result in
                    completion(result)
                })
            }
        }
        
    }
    
    /// The wvw objectives endpoint client: api.guildwars2.com/v2/wvw/objectives
    public class WVWObjectivesClient : Client {
        
        /// Returns a list of all wvw objective ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [String]), APIError>)
        public func get(_ completion: @escaping APIRequestCallback<[String]>) {
            self.client.send(request: GetWVWObjectiveIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the wvw objective corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw objective you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, WVWObjective), APIError>)
        public func get(id: String, _ completion: @escaping APIRequestCallback<WVWObjective>) {
            self.client.send(request: GetWVWObjective(id: id, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more wvw objectives corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw objective(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [WVWObjective]), APIError>)
        public func get(ids: [String], _ completion: @escaping APIRequestCallback<[WVWObjective]>) {
            self.client.send(request: GetWVWObjectives(ids: ids, lang: lang), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The wvw ranks endpoint client: api.guildwars2.com/v2/wvw/ranks
    public class WVWRanksClient : Client {
        
        /// Returns a list of all wvw rank ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [Int]), APIError>)
        public func get(_ completion: @escaping APIRequestCallback<[Int]>) {
            self.client.send(request: GetWVWRankIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the wvw rank corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw rank you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, WVWRank), APIError>)
        public func get(id: Int, _ completion: @escaping APIRequestCallback<WVWRank>) {
            self.client.send(request: GetWVWRank(id: id, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more wvw ranks corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw rank(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [WVWRank]), APIError>)
        public func get(ids: [Int], _ completion: @escaping APIRequestCallback<[WVWRank]>) {
            self.client.send(request: GetWVWRanks(ids: ids, lang: lang), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The wvw upgrades endpoint client: api.guildwars2.com/v2/wvw/upgrades
    public class WVWUpgradesClient : Client {
        
        /// Returns a list of all wvw upgrade ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [Int]), APIError>)
        public func get(_ completion: @escaping APIRequestCallback<[Int]>) {
            self.client.send(request: GetWVWUpgradeIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the wvw upgrade corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw upgrade you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, WVWUpgrade), APIError>)
        public func get(id: Int, _ completion: @escaping APIRequestCallback<WVWUpgrade>) {
            self.client.send(request: GetWVWUpgrade(id: id, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more wvw upgrades corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw upgrade(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [WVWUpgrade]), APIError>)
        public func get(ids: [Int], _ completion: @escaping APIRequestCallback<[WVWUpgrade]>) {
            self.client.send(request: GetWVWUpgrades(ids: ids, lang: lang), completion: { result in
                completion(result)
            })
        }
    }
}
