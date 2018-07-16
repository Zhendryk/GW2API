//
//  AchievementsClient.swift
//  GW2API
//
//  Created by Zhendryk on 7/2/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//


/// The achievements endpoint client: api.guildwars2.com/v2/achievements
public class AchievementsClient: Client {
    
    /// The daily achievements endpoint: information about daily achievements
    public let daily: DailyAchievementClient = DailyAchievementClient()
    
    /// The daily tomorrow achievements endpoint: information about tomorrow's daily achievements
    public let dailyTomorrow: DailyTomorrowAchievementClient = DailyTomorrowAchievementClient()
    
    /// The achievement categories endpoint: information about achievement categories
    public let categories: AchievementCategoryClient = AchievementCategoryClient()
    
    /// The achievement groups endpoint: information about achievement groups
    public let groups: AchievementGroupClient = AchievementGroupClient()
    
    /// Returns a list of all achievement ids
    ///
    /// - Parameters:
    ///   - endpoint: Endpoint to request, default = EAchievements.achievements
    ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
    public func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
        fetchAsync(with: EAchievements.achievements.request, decode: { json -> [Int]? in
            guard let result = json as? [Int] else { return nil }
            return result
        }, completion: completion)
    }
    
    /// Returns the single achievement associated with the given id
    ///
    /// - Parameters:
    ///   - id: The id of the desired achievement
    ///   - completion: Callback function to handle the data returned from the API (Result<Achievement?, APIError>)
    public func get(id: Int, completion: @escaping (Result<Achievement?, APIError>) -> Void) {
        fetchAsync(with: EAchievements.achievements.idRequest(id: String(id)), decode: { json -> Achievement? in
            guard let res = json as? Achievement else { return nil }
            return res
        }, completion: completion)
    }
    
    /// Returns information for a list of associated achievement ids
    ///
    /// - Parameters:
    ///   - ids: The ids of the desired achievements "id1, id2, id3... etc"
    ///   - completion: Callback function to handle the data returned from the API (Result<Achievement?, APIError>)
    public func get(ids: [Int], completion: @escaping (Result<[Achievement]?, APIError>) -> Void) {
        fetchAsync(with: EAchievements.achievements.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [Achievement]? in
            guard let res = json as? [Achievement] else { return nil }
            return res
        }, completion: completion)
    }
    
    /// The daily achievements endpoint client: api.guildwars2.com/v2/achievements/daily
    public class DailyAchievementClient: Client {
        
        /// Returns information about daily achievements
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<DailyAchievement?, APIError>)
        public func get(completion: @escaping (Result<DailyAchievement?, APIError>) -> Void) {
            fetchAsync(with: EAchievements.daily.request, decode: { json -> DailyAchievement? in
                guard let result = json as? DailyAchievement else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    /// The daily achievements tomorrow client: api.guildwars2.com/v2/achievements/daily/tomorrow
    public class DailyTomorrowAchievementClient : Client {
        
        /// Returns information about the next daily achievements
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<DailyAchievement?, APIError>)
        public func get(completion: @escaping (Result<DailyAchievement?, APIError>) -> Void) {
            fetchAsync(with: EAchievements.dailyTomorrow.request, decode: { json -> DailyAchievement? in
                guard let result = json as? DailyAchievement else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    /// The achievement categories client: api.guildwars2.com/v2/achievements/categories
    public class AchievementCategoryClient: Client {
        
        /// Returns a list of all achievement category ids
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EAchievements.categories.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        /// Returns the single achievement category associated with the given id
        ///
        /// - Parameters:
        ///   - id: The id of the desired achievement category
        ///   - completion: Callback function to handle the data returned from the API (Result<AchievementCategory?, APIError>)
        public func get(id: Int, completion: @escaping (Result<AchievementCategory?, APIError>) -> Void) {
            fetchAsync(with: EAchievements.categories.idRequest(id: String(id)), decode: { json -> AchievementCategory? in
                guard let res = json as? AchievementCategory else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns information for a list of associated achievement category ids
        ///
        /// - Parameters:
        ///   - ids: The ids of the desired achievement categories "id1, id2, id3... etc"
        ///   - completion: Callback function to handle the data returned from the API (Result<[AchievementCategory]?, APIError>)
        public func get(ids: [Int], completion: @escaping (Result<[AchievementCategory]?, APIError>) -> Void) {
            fetchAsync(with: EAchievements.categories.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [AchievementCategory]? in
                guard let res = json as? [AchievementCategory] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The achievement groups client: api.guildwars2.com/v2/achievements/groups
    public class AchievementGroupClient: Client {
        
        /// Returns a list of all achievement group ids
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: EAchievements.groups.request, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }
        
        /// Returns the single achievement group associated with the given id
        ///
        /// - Parameters:
        ///   - id: The id of the desired achievement group
        ///   - completion: Callback function to handle the data returned from the API (Result<AchievementGroup?, APIError>)
        public func get(id: String, completion: @escaping (Result<AchievementGroup?, APIError>) -> Void) {
            fetchAsync(with: EAchievements.groups.idRequest(id: id), decode: { json -> AchievementGroup? in
                guard let res = json as? AchievementGroup else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns information for a list of associated achievement group ids
        ///
        /// - Parameters:
        ///   - ids: The ids of the desired achievement groups "id1, id2, id3... etc"
        ///   - completion: Callback function to handle the data returned from the API (Result<[AchievementGroup]?, APIError>)
        public func get(ids: [String], completion: @escaping (Result<[AchievementGroup]?, APIError>) -> Void) {
            fetchAsync(with: EAchievements.groups.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.strArrToList(ids))], decode: { json -> [AchievementGroup]? in
                guard let res = json as? [AchievementGroup] else { return nil }
                return res
            }, completion: completion)
        }
    }
}
