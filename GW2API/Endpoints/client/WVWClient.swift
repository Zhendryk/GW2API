//
//  WVWClient.swift
//  GW2API
//
//  Created by Zhendryk on 7/14/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

import Swift_Generic_API_Client

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
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping RequestCallback<[Int]>) {
            _ = self.client.send(request: GetWVWAbilityIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the wvw ability corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw ability you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<WVWAbility?, APIError>)
        public func get(id: Int, completion: @escaping RequestCallback<WVWAbility>) {
            _ = self.client.send(request: GetWVWAbility(id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more wvw abilities corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw ability(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[WVWAbility]?, APIError>)
        public func get(ids: [Int], completion: @escaping RequestCallback<[WVWAbility]>) {
            _ = self.client.send(request: GetWVWAbilities(ids: ids)) { result in
                completion(result)
            }
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
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(completion: @escaping RequestCallback<[String]>) {
            _ = self.client.send(request: GetWVWMatchIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the wvw match corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw match you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<WVWMatch?, APIError>)
        public func get(id: String, completion: @escaping RequestCallback<WVWMatch>) {
            _ = self.client.send(request: GetWVWMatch(id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more wvw matches corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw match(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[WVWMatch]?, APIError>)
        public func get(ids: [String], completion: @escaping RequestCallback<[WVWMatch]>) {
            _ = self.client.send(request: GetWVWMatches(ids: ids)) { result in
                completion(result)
            }
        }
        
        /// The wvw match overview endpoint client: api.guildwars2.com/v2/wvw/matches/overview
        public class WVWMatchOverviewClient : Client {
            
            /// Returns a list of all wvw match overview ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
            public func get(completion: @escaping RequestCallback<[String]>) {
                _ = self.client.send(request: GetWVWMatchOverviewIDs()) { result in
                    completion(result)
                }
            }
            
            /// Returns the wvw match overview corresponding to the given id
            ///
            /// - Parameters:
            ///   - id: The id of the wvw match overview you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<WVWMatchOverview?, APIError>)
            public func get(id: String, completion: @escaping RequestCallback<WVWMatchOverview>) {
                _ = self.client.send(request: GetWVWMatchOverview(id: id, world: nil)) { result in
                    completion(result)
                }
            }
            
            /// Returns the wvw match overview for the given world
            ///
            /// - Parameters:
            ///   - worldID: The ID of the world you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<WVWMatchOverview?, APIError>)
            public func get(worldID: Int, completion: @escaping RequestCallback<WVWMatchOverview>) {
                _ = self.client.send(request: GetWVWMatchOverview(id: nil, world: worldID)) { result in
                    completion(result)
                }
            }
            
            /// Returns one or more wvw match overviews corresponding to the given ids
            ///
            /// - Parameters:
            ///   - ids: the id(s) of the wvw match overview(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<[WVWMatchOverview]?, APIError>)
            public func get(ids: [String], completion: @escaping RequestCallback<[WVWMatchOverview]>) {
                _ = self.client.send(request: GetWVWMatchOverviews(ids: ids, world: nil)) { result in
                    completion(result)
                }
            }
        }
        
        /// The wvw match stats endpoint client: api.guildwars2.com/v2/wvw/matches/stats
        public class WVWMatchStatsClient : Client {
            
            /// Returns a list of all wvw match stats ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
            public func get(completion: @escaping RequestCallback<[String]>) {
                _ = self.client.send(request: GetWVWMatchStatsIDs()) { result in
                    completion(result)
                }
            }
            
            /// Returns the wvw match stats corresponding to the given id
            ///
            /// - Parameters:
            ///   - id: The id of the wvw match stats you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<WVWMatchStats?, APIError>)
            public func get(id: String, completion: @escaping RequestCallback<WVWMatchStats>) {
                _ = self.client.send(request: GetWVWMatchStats(id: id, world: nil)) { result in
                    completion(result)
                }
            }
            
            /// Returns the wvw match stats for the given world
            ///
            /// - Parameters:
            ///   - worldID: The ID of the world you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<WVWMatchStats?, APIError>)
            public func get(worldID: Int, completion: @escaping RequestCallback<WVWMatchStats>) {
                _ = self.client.send(request: GetWVWMatchStats(id: nil, world: worldID)) { result in
                    completion(result)
                }
            }
            
            /// Returns one or more wvw match stats corresponding to the given ids
            ///
            /// - Parameters:
            ///   - ids: the id(s) of the wvw match stat(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<[WVWMatchStats]?, APIError>)
            public func get(ids: [String], completion: @escaping RequestCallback<[WVWMatchStats]>) {
                _ = self.client.send(request: GetWVWMatchesStats(ids: ids, world: nil)) { result in
                    completion(result)
                }
            }
        }
        
        /// The wvw match scores endpoint client: api.guildwars2.com/v2/wvw/matches/scores
        public class WVWMatchScoresClient : Client {
            
            /// Returns a list of all wvw match score ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
            public func get(completion: @escaping RequestCallback<[String]>) {
                _ = self.client.send(request: GetWVWMatchScoreIDs()) { result in
                    completion(result)
                }
            }
            
            /// Returns the wvw match score corresponding to the given id
            ///
            /// - Parameters:
            ///   - id: The id of the wvw match score you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<WVWMatchScore?, APIError>)
            public func get(id: String, completion: @escaping RequestCallback<WVWMatchScore>) {
                _ = self.client.send(request: GetWVWMatchScore(id: id, world: nil)) { result in
                    completion(result)
                }
            }
            
            /// Returns the wvw match score for the given world
            ///
            /// - Parameters:
            ///   - worldID: The ID of the world you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<WVWMatchScore?, APIError>)
            public func get(worldID: Int, completion: @escaping RequestCallback<WVWMatchScore>) {
                _ = self.client.send(request: GetWVWMatchScore(id: nil, world: worldID)) { result in
                    completion(result)
                }
            }
            
            /// Returns one or more wvw match scores corresponding to the given ids
            ///
            /// - Parameters:
            ///   - ids: the id(s) of the wvw match score(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<[WVWMatchStats]?, APIError>)
            public func get(ids: [String], completion: @escaping RequestCallback<[WVWMatchScore]>) {
                _ = self.client.send(request: GetWVWMatchScores(ids: ids, world: nil)) { result in
                    completion(result)
                }
            }
        }
        
    }
    
    /// The wvw objectives endpoint client: api.guildwars2.com/v2/wvw/objectives
    public class WVWObjectivesClient : Client {
        
        /// Returns a list of all wvw objective ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(completion: @escaping RequestCallback<[String]>) {
            _ = self.client.send(request: GetWVWObjectiveIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the wvw objective corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw objective you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<WVWObjective?, APIError>)
        public func get(id: String, completion: @escaping RequestCallback<WVWObjective>) {
            _ = self.client.send(request: GetWVWObjective(id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more wvw objectives corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw objective(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[WVWObjective]?, APIError>)
        public func get(ids: [String], completion: @escaping RequestCallback<[WVWObjective]>) {
            _ = self.client.send(request: GetWVWObjectives(ids: ids)) { result in
                completion(result)
            }
        }
    }
    
    /// The wvw ranks endpoint client: api.guildwars2.com/v2/wvw/ranks
    public class WVWRanksClient : Client {
        
        /// Returns a list of all wvw rank ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping RequestCallback<[Int]>) {
            _ = self.client.send(request: GetWVWRankIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the wvw rank corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw rank you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<WVWRank?, APIError>)
        public func get(id: Int, completion: @escaping RequestCallback<WVWRank>) {
            _ = self.client.send(request: GetWVWRank(id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more wvw ranks corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw rank(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[WVWRank]?, APIError>)
        public func get(ids: [Int], completion: @escaping RequestCallback<[WVWRank]>) {
            _ = self.client.send(request: GetWVWRanks(ids: ids)) { result in
                completion(result)
            }
        }
    }
    
    /// The wvw upgrades endpoint client: api.guildwars2.com/v2/wvw/upgrades
    public class WVWUpgradesClient : Client {
        
        /// Returns a list of all wvw upgrade ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping RequestCallback<[Int]>) {
            _ = self.client.send(request: GetWVWUpgradeIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the wvw upgrade corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw upgrade you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<WVWUpgrade?, APIError>)
        public func get(id: Int, completion: @escaping RequestCallback<WVWUpgrade>) {
            _ = self.client.send(request: GetWVWUpgrade(id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more wvw upgrades corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw upgrade(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[WVWUpgrade]?, APIError>)
        public func get(ids: [Int], completion: @escaping RequestCallback<[WVWUpgrade]>) {
            _ = self.client.send(request: GetWVWUpgrades(ids: ids)) { result in
                completion(result)
            }
        }
    }
}
