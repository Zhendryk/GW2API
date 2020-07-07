//
//  PVPClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/13/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import APIClient

/// The PVP endpoint client: api.guildwars2.com/v2/pvp
public class PVPClient : Client {
    
    /// The pvp ranks endpoint: information about pvp ranks
    public let ranks: PVPRanksClient = PVPRanksClient()
    
    /// The pvp seasons endpoint: information about league seasons and league leaderboards
    public let seasons: PVPSeasonsClient = PVPSeasonsClient()
    
    /// Sets the language for every sub endpoint
    ///
    /// - Parameter language: The language to set
    override func setLanguage(_ language: String) {
        self.lang = language
        self.ranks.setLanguage(language)
        self.seasons.setLanguage(language)
    }
    
    /// Returns information about the v2/pvp endpoints
    ///
    /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [String]), APIError>)
    public func get(_ completion: @escaping APIRequestCallback<[String]>) {
        self.client.send(request: GetPVPInfo(), completion: { result in
            completion(result)
        })
    }
    
    /// The pvp ranks endpoint client: api.guildwars2.com/v2/pvp/ranks
    public class PVPRanksClient : Client {
        
        /// Returns a list of all pvp rank ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [Int]), APIError>)
        public func get(_ completion: @escaping APIRequestCallback<[Int]>) {
            self.client.send(request: GetPVPRankIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the pvp rank corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the pvp rank you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, PVPRank), APIError>)
        public func get(id: Int, _ completion: @escaping APIRequestCallback<PVPRank>) {
            self.client.send(request: GetPVPRank(id: id, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more pvp ranks corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the pvp rank(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [PVPRank]), APIError>)
        public func get(ids: [Int], _ completion: @escaping APIRequestCallback<[PVPRank]>) {
            self.client.send(request: GetPVPRanks(ids: ids, page: nil, page_size: nil, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the given page of paginated information with the given number of entries about pvp ranks
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict the page to
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [PVPRank]), APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping APIRequestCallback<[PVPRank]>) {
            self.client.send(request: GetPVPRanks(ids: nil, page: page, page_size: page_size, lang: lang), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The pvp seasons endpoint client: api.guildwars2.com/v2/pvp/seasons
    public class PVPSeasonsClient : Client {
        
        /// The pvp season leaderboards endpoint: information about league leaderboards in NA or EU
        public let leaderboards: PVPSeasonLeaderboardsClient = PVPSeasonLeaderboardsClient()
        
        /// Sets the language for every sub endpoint
        ///
        /// - Parameter language: The language to set
        override func setLanguage(_ language: String) {
            self.lang = language
            self.leaderboards.setLanguage(language)
        }
        
        /// Returns a list of all pvp season ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [String]), APIError>)
        public func get(_ completion: @escaping APIRequestCallback<[String]>) {
            self.client.send(request: GetPVPSeasonIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the pvp season corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the pvp season you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, PVPSeason), APIError>)
        public func get(id: String, _ completion: @escaping APIRequestCallback<PVPSeason>) {
            self.client.send(request: GetPVPSeason(id: id, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more pvp seasons corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the pvp season(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [PVPSeason]), APIError>)
        public func get(ids: [String], _ completion: @escaping APIRequestCallback<[PVPSeason]>) {
            self.client.send(request: GetPVPSeasons(ids: ids, page: nil, page_size: nil, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the given page of paginated information with the given number of entries about pvp seasons
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict the page to
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [PVPSeason]), APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping APIRequestCallback<[PVPSeason]>) {
            self.client.send(request: GetPVPSeasons(ids: nil, page: page, page_size: page_size, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// The pvp season leaderboard endpoint client: api.guildwars2.com/v2/pvp/seasons/leaderboards
        public class PVPSeasonLeaderboardsClient : Client {
            
            /// Returns the solo leaderboard for the given season ID **from seasons 1-4**
            ///
            /// - Parameters:
            ///   - seasonID: The ID of the season you are looking for
            ///   - eu: Mark as true if you want to search for Europe servers, default North America
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [PVPSeasonLeaderboard]), APIError>)
            public func getLegendary(seasonID: String, eu: Bool = false, _ completion: @escaping APIRequestCallback<[PVPSeasonLeaderboard]>) {
                if eu {
                    self.client.send(request: GetEULegendaryLeaderboard(id: seasonID, lang: lang), completion: { result in
                        completion(result)
                    })
                }
                else {
                    self.client.send(request: GetNALegendaryLeaderboard(id: seasonID, lang: lang), completion: { result in
                        completion(result)
                    })
                }
            }
            
            /// Returns the guild leaderboard for the given season ID **from seasons 1-4**
            ///
            /// - Parameters:
            ///   - seasonID: The ID of the season you are looking for
            ///   - eu: Mark as true if you want to search for Europe servers, default North America
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [PVPSeasonLeaderboard]), APIError>)
            public func getGuild(seasonID: String, eu: Bool = false, _ completion: @escaping APIRequestCallback<[PVPSeasonLeaderboard]>) {
                if eu {
                    self.client.send(request: GetEUGuildLeaderboard(id: seasonID, lang: lang), completion: { result in
                        completion(result)
                    })
                }
                else {
                    self.client.send(request: GetNAGuildLeaderboard(id: seasonID, lang: lang), completion: { result in
                        completion(result)
                    })
                }
            }
            
            /// Returns the leaderboard for the given season ID **from seasons 5 onward**
            ///
            /// - Parameters:
            ///   - seasonID: The ID of the season you are looking for
            ///   - eu: Mark as true if you want to search for Europe servers, default North America
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [PVPSeasonLeaderboard]), APIError>)
            public func getLadder(seasonID: String, eu: Bool = false, _ completion: @escaping APIRequestCallback<[PVPSeasonLeaderboard]>) {
                if eu {
                    self.client.send(request: GetEULadderLeaderboard(id: seasonID, lang: lang), completion: { result in
                        completion(result)
                    })
                }
                else {
                    self.client.send(request: GetNALadderLeaderboard(id: seasonID, lang: lang), completion: { result in
                        completion(result)
                    })
                }
            }
        }
    }
}
