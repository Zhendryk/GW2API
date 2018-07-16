//
//  WVWClient.swift
//  GW2API
//
//  Created by Zhendryk on 7/14/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

/// The wvw endpoint client: api.guildwars2.com/v2/wvw
public class WVWClient : Client {
    
    /// The wvw abilities endpoint: information about world vs world abilities
    let abilities: WVWAbilitiesClient = WVWAbilitiesClient()
    
    /// The wvw matches endpoint: information about world vs world matches
    let matches: WVWMatchesClient = WVWMatchesClient()
    
    /// The wvw objectives endpoint: information about world vs world objectives
    let objectives: WVWObjectivesClient = WVWObjectivesClient()
    
    /// The wvw ranks endpoint: information about world vs world ranks
    let ranks: WVWRanksClient = WVWRanksClient()
    
    /// The wvw upgrades endpoint: information about world vs world upgrades
    let upgrades: WVWUpgradesClient = WVWUpgradesClient()
    
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
    class WVWAbilitiesClient : Client {
        
        /// Returns a list of all wvw ability ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EWVW.abilities.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the wvw ability corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw ability you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<WVWAbility?, APIError>)
        func get(id: Int, completion: @escaping (Result<WVWAbility?, APIError>) -> Void) {
            fetchAsync(with: EWVW.abilities.idRequest(id: String(id)), decode: { json -> WVWAbility? in
                guard let res = json as? WVWAbility else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more wvw abilities corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw ability(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[WVWAbility]?, APIError>)
        func get(ids: [Int], completion: @escaping (Result<[WVWAbility]?, APIError>) -> Void) {
            fetchAsync(with: EWVW.abilities.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [WVWAbility]? in
                guard let res = json as? [WVWAbility] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The wvw matches endpoint client: api.guildwars2.com/v2/wvw/matches
    class WVWMatchesClient : Client {
        
        /// The wvw match overview endpoint: information about world vs world match overviews
        let overview: WVWMatchOverviewClient = WVWMatchOverviewClient()
        
        /// The wvw match scores endpoint: information about world vs world match scores
        let scores: WVWMatchScoresClient = WVWMatchScoresClient()
        
        /// The wvw match stats endpoint: information about world vs world match statistics
        let stats: WVWMatchStatsClient = WVWMatchStatsClient()
        
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
        func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: EWVW.matches.request, decode: { json -> [String]? in
                guard let res = json as? [String] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the wvw match corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw match you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<WVWMatch?, APIError>)
        func get(id: String, completion: @escaping (Result<WVWMatch?, APIError>) -> Void) {
            fetchAsync(with: EWVW.matches.idRequest(id: id), decode: { json -> WVWMatch? in
                guard let res = json as? WVWMatch else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more wvw matches corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw match(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[WVWMatch]?, APIError>)
        func get(ids: [String], completion: @escaping (Result<[WVWMatch]?, APIError>) -> Void) {
            fetchAsync(with: EWVW.matches.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.strArrToList(ids))], decode: { json -> [WVWMatch]? in
                guard let res = json as? [WVWMatch] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// The wvw match overview endpoint client: api.guildwars2.com/v2/wvw/matches/overview
        class WVWMatchOverviewClient : Client {
            
            /// Returns a list of all wvw match overview ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
            func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
                fetchAsync(with: EWVW.matchOverview.request, decode: { json -> [String]? in
                    guard let res = json as? [String] else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the wvw match overview corresponding to the given id
            ///
            /// - Parameters:
            ///   - id: The id of the wvw match overview you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<WVWMatchOverview?, APIError>)
            func get(id: String, completion: @escaping (Result<WVWMatchOverview?, APIError>) -> Void) {
                fetchAsync(with: EWVW.matchOverview.idRequest(id: id), decode: { json -> WVWMatchOverview? in
                    guard let res = json as? WVWMatchOverview else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the wvw match overview for the given world
            ///
            /// - Parameters:
            ///   - worldID: The ID of the world you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<WVWMatchOverview?, APIError>)
            func get(worldID: Int, completion: @escaping (Result<WVWMatchOverview?, APIError>) -> Void) {
                fetchAsync(with: EWVW.matchOverview.request, parameters: [URLQueryItem(name: "world", value: String(worldID))], decode: { json -> WVWMatchOverview? in
                    guard let res = json as? WVWMatchOverview else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns one or more wvw match overviews corresponding to the given ids
            ///
            /// - Parameters:
            ///   - ids: the id(s) of the wvw match overview(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<[WVWMatchOverview]?, APIError>)
            func get(ids: [String], completion: @escaping (Result<[WVWMatchOverview]?, APIError>) -> Void) {
                fetchAsync(with: EWVW.matchOverview.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.strArrToList(ids))], decode: { json -> [WVWMatchOverview]? in
                    guard let res = json as? [WVWMatchOverview] else { return nil }
                    return res
                }, completion: completion)
            }
        }
        
        /// The wvw match stats endpoint client: api.guildwars2.com/v2/wvw/matches/stats
        class WVWMatchStatsClient : Client {
            
            /// Returns a list of all wvw match stats ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
            func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
                fetchAsync(with: EWVW.matchStats.request, decode: { json -> [String]? in
                    guard let res = json as? [String] else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the wvw match stats corresponding to the given id
            ///
            /// - Parameters:
            ///   - id: The id of the wvw match stats you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<WVWMatchStats?, APIError>)
            func get(id: String, completion: @escaping (Result<WVWMatchStats?, APIError>) -> Void) {
                fetchAsync(with: EWVW.matchStats.idRequest(id: id), decode: { json -> WVWMatchStats? in
                    guard let res = json as? WVWMatchStats else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the wvw match stats for the given world
            ///
            /// - Parameters:
            ///   - worldID: The ID of the world you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<WVWMatchStats?, APIError>)
            func get(worldID: Int, completion: @escaping (Result<WVWMatchStats?, APIError>) -> Void) {
                fetchAsync(with: EWVW.matchStats.request, parameters: [URLQueryItem(name: "world", value: String(worldID))], decode: { json -> WVWMatchStats? in
                    guard let res = json as? WVWMatchStats else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns one or more wvw match stats corresponding to the given ids
            ///
            /// - Parameters:
            ///   - ids: the id(s) of the wvw match stat(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<[WVWMatchStats]?, APIError>)
            func get(ids: [String], completion: @escaping (Result<[WVWMatchStats]?, APIError>) -> Void) {
                fetchAsync(with: EWVW.matchStats.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.strArrToList(ids))], decode: { json -> [WVWMatchStats]? in
                    guard let res = json as? [WVWMatchStats] else { return nil }
                    return res
                }, completion: completion)
            }
        }
        
        /// The wvw match scores endpoint client: api.guildwars2.com/v2/wvw/matches/scores
        class WVWMatchScoresClient : Client {
            
            /// Returns a list of all wvw match score ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
            func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
                fetchAsync(with: EWVW.matchScores.request, decode: { json -> [String]? in
                    guard let res = json as? [String] else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the wvw match score corresponding to the given id
            ///
            /// - Parameters:
            ///   - id: The id of the wvw match score you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<WVWMatchScore?, APIError>)
            func get(id: String, completion: @escaping (Result<WVWMatchScore?, APIError>) -> Void) {
                fetchAsync(with: EWVW.matchScores.idRequest(id: id), decode: { json -> WVWMatchScore? in
                    guard let res = json as? WVWMatchScore else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the wvw match score for the given world
            ///
            /// - Parameters:
            ///   - worldID: The ID of the world you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<WVWMatchScore?, APIError>)
            func get(worldID: Int, completion: @escaping (Result<WVWMatchScore?, APIError>) -> Void) {
                fetchAsync(with: EWVW.matchScores.request, parameters: [URLQueryItem(name: "world", value: String(worldID))], decode: { json -> WVWMatchScore? in
                    guard let res = json as? WVWMatchScore else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns one or more wvw match scores corresponding to the given ids
            ///
            /// - Parameters:
            ///   - ids: the id(s) of the wvw match score(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<[WVWMatchStats]?, APIError>)
            func get(ids: [String], completion: @escaping (Result<[WVWMatchScore]?, APIError>) -> Void) {
                fetchAsync(with: EWVW.matchScores.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.strArrToList(ids))], decode: { json -> [WVWMatchScore]? in
                    guard let res = json as? [WVWMatchScore] else { return nil }
                    return res
                }, completion: completion)
            }
        }
        
    }
    
    /// The wvw objectives endpoint client: api.guildwars2.com/v2/wvw/objectives
    class WVWObjectivesClient : Client {
        
        /// Returns a list of all wvw objective ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: EWVW.objectives.request, decode: { json -> [String]? in
                guard let res = json as? [String] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the wvw objective corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw objective you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<WVWObjective?, APIError>)
        func get(id: String, completion: @escaping (Result<WVWObjective?, APIError>) -> Void) {
            fetchAsync(with: EWVW.objectives.idRequest(id: id), decode: { json -> WVWObjective? in
                guard let res = json as? WVWObjective else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more wvw objectives corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw objective(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[WVWObjective]?, APIError>)
        func get(ids: [String], completion: @escaping (Result<[WVWObjective]?, APIError>) -> Void) {
            fetchAsync(with: EWVW.objectives.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.strArrToList(ids))], decode: { json -> [WVWObjective]? in
                guard let res = json as? [WVWObjective] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The wvw ranks endpoint client: api.guildwars2.com/v2/wvw/ranks
    class WVWRanksClient : Client {
        
        /// Returns a list of all wvw rank ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EWVW.ranks.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the wvw rank corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw rank you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<WVWRank?, APIError>)
        func get(id: Int, completion: @escaping (Result<WVWRank?, APIError>) -> Void) {
            fetchAsync(with: EWVW.ranks.idRequest(id: String(id)), decode: { json -> WVWRank? in
                guard let res = json as? WVWRank else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more wvw ranks corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw rank(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[WVWRank]?, APIError>)
        func get(ids: [Int], completion: @escaping (Result<[WVWRank]?, APIError>) -> Void) {
            fetchAsync(with: EWVW.ranks.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [WVWRank]? in
                guard let res = json as? [WVWRank] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The wvw upgrades endpoint client: api.guildwars2.com/v2/wvw/upgrades
    class WVWUpgradesClient : Client {
        
        /// Returns a list of all wvw upgrade ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EWVW.upgrades.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the wvw upgrade corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the wvw upgrade you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<WVWUpgrade?, APIError>)
        func get(id: Int, completion: @escaping (Result<WVWUpgrade?, APIError>) -> Void) {
            fetchAsync(with: EWVW.upgrades.idRequest(id: String(id)), decode: { json -> WVWUpgrade? in
                guard let res = json as? WVWUpgrade else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more wvw upgrades corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the wvw upgrade(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[WVWUpgrade]?, APIError>)
        func get(ids: [Int], completion: @escaping (Result<[WVWUpgrade]?, APIError>) -> Void) {
            fetchAsync(with: EWVW.upgrades.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [WVWUpgrade]? in
                guard let res = json as? [WVWUpgrade] else { return nil }
                return res
            }, completion: completion)
        }
    }
}
