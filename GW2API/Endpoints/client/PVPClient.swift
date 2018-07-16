//
//  PVPClient.swift
//  GW2API
//
//  Created by Zhendryk on 7/13/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

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
    /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
    public func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
        fetchAsync(with: EPVP.pvp.request, decode: { json -> [String]? in
            guard let res = json as? [String] else { return nil }
            return res
        }, completion: completion)
    }
    
    /// The pvp ranks endpoint client: api.guildwars2.com/v2/pvp/ranks
    public class PVPRanksClient : Client {
        
        /// Returns a list of all pvp rank ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EPVP.ranks.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the pvp rank corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the pvp rank you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<PVPRank?, APIError>)
        public func get(id: Int, completion: @escaping (Result<PVPRank?, APIError>) -> Void) {
            fetchAsync(with: EPVP.ranks.idRequest(id: String(id)), decode: { json -> PVPRank? in
                guard let res = json as? PVPRank else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more pvp ranks corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the pvp rank(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[PVPRank]?, APIError>)
        public func get(ids: [Int], completion: @escaping (Result<[PVPRank]?, APIError>) -> Void) {
            fetchAsync(with: EPVP.ranks.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [PVPRank]? in
                guard let res = json as? [PVPRank] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated information with the given number of entries about pvp ranks
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict the page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[PVPRank]?, APIError>)
        public func get(page: Int, page_size: Int, completion: @escaping (Result<[PVPRank]?, APIError>) -> Void) {
            fetchAsync(with: EPVP.ranks.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [PVPRank]? in
                guard let res = json as? [PVPRank] else { return nil }
                return res
            }, completion: completion)
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
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: EPVP.seasons.request, decode: { json -> [String]? in
                guard let res = json as? [String] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the pvp season corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the pvp season you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<PVPSeason?, APIError>)
        public func get(id: String, completion: @escaping (Result<PVPSeason?, APIError>) -> Void) {
            fetchAsync(with: EPVP.seasons.idRequest(id: id), decode: { json -> PVPSeason? in
                guard let res = json as? PVPSeason else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more pvp seasons corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the pvp season(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[PVPSeason]?, APIError>)
        public func get(ids: [String], completion: @escaping (Result<[PVPSeason]?, APIError>) -> Void) {
            fetchAsync(with: EPVP.seasons.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.strArrToList(ids))], decode: { json -> [PVPSeason]? in
                guard let res = json as? [PVPSeason] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated information with the given number of entries about pvp seasons
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict the page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[PVPSeason]?, APIError>)
        public func get(page: Int, page_size: Int, completion: @escaping (Result<[PVPSeason]?, APIError>) -> Void) {
            fetchAsync(with: EPVP.seasons.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [PVPSeason]? in
                guard let res = json as? [PVPSeason] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// The pvp season leaderboard endpoint client: api.guildwars2.com/v2/pvp/seasons/leaderboards
        public class PVPSeasonLeaderboardsClient : Client {
            
            /// Returns the solo leaderboard for the given season ID **from seasons 1-4**
            ///
            /// - Parameters:
            ///   - seasonID: The ID of the season you are looking for
            ///   - eu: Mark as true if you want to search for Europe servers, default North America
            ///   - completion: Callback function to handle the data returned from the API (Result<[PVPSeasonLeaderboard]?, APIError>)
            public func getLegendary(seasonID: String, eu: Bool = false, completion: @escaping (Result<[PVPSeasonLeaderboard]?, APIError>) -> Void) {
                var request = EPVP.seasonLeaderboardsLegendary.request.url!.absoluteString
                if eu { request.append("/eu") }
                else { request.append("/na") }
                request = request.replacingOccurrences(of: ":seasonID", with: seasonID)
                guard let url = URL(string: request) else { return }
                fetchAsync(with: URLRequest(url: url), decode: { json -> [PVPSeasonLeaderboard]? in
                    guard let res = json as? [PVPSeasonLeaderboard] else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the guild leaderboard for the given season ID **from seasons 1-4**
            ///
            /// - Parameters:
            ///   - seasonID: The ID of the season you are looking for
            ///   - eu: Mark as true if you want to search for Europe servers, default North America
            ///   - completion: Callback function to handle the data returned from the API (Result<[PVPSeasonLeaderboard]?, APIError>)
            public func getGuild(seasonID: String, eu: Bool = false, completion: @escaping (Result<[PVPSeasonLeaderboard]?, APIError>) -> Void) {
                var request = EPVP.seasonLeaderboardsGuild.request.url!.absoluteString
                if eu { request.append("/eu") }
                else { request.append("/na") }
                request = request.replacingOccurrences(of: ":seasonID", with: seasonID)
                guard let url = URL(string: request) else { return }
                fetchAsync(with: URLRequest(url: url), decode: { json -> [PVPSeasonLeaderboard]? in
                    guard let res = json as? [PVPSeasonLeaderboard] else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the leaderboard for the given season ID **from seasons 5 onward**
            ///
            /// - Parameters:
            ///   - seasonID: The ID of the season you are looking for
            ///   - eu: Mark as true if you want to search for Europe servers, default North America
            ///   - completion: Callback function to handle the data returned from the API (Result<[PVPSeasonLeaderboard]?, APIError>)
            public func getLadder(seasonID: String, eu: Bool = false, completion: @escaping (Result<[PVPSeasonLeaderboard]?, APIError>) -> Void) {
                var request = EPVP.seasonLeaderboardsLadder.request.url!.absoluteString
                if eu { request.append("/eu") }
                else { request.append("/na") }
                request = request.replacingOccurrences(of: ":seasonID", with: seasonID)
                guard let url = URL(string: request) else { return }
                fetchAsync(with: URLRequest(url: url), decode: { json -> [PVPSeasonLeaderboard]? in
                    guard let res = json as? [PVPSeasonLeaderboard] else { return nil }
                    return res
                }, completion: completion)
            }
        }
    }
}
