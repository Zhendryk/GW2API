//
//  AchievementsClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/2/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//


/// The achievements endpoint client: api.guildwars2.com/v2/achievements
class AchievementsClient: Client {
    
    /// The daily achievements endpoint: api.guildwars2.com/v2/achievements/daily
    let daily: DailyAchievementClient = DailyAchievementClient()
    
    /// The daily tomorrow achievements endpoint: api.guildwars2.com/v2/achievements/daily/tomorrow
    let dailyTomorrow: DailyTomorrowAchievementClient = DailyTomorrowAchievementClient()
    
    /// The achievement categories endpoint: api.guildwars2.com/v2/achievements/categories
    let categories: AchievementCategoryClient = AchievementCategoryClient()
    
    /// The achievement groups endpoint: api.guildwars2.com/v2/achievements/groups
    let groups: AchievementGroupClient = AchievementGroupClient()
    
    /// Returns a list of all achievement ids
    ///
    /// - Parameters:
    ///   - endpoint: Endpoint to request, default = EAchievements.achievements
    ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
    func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
        fetchAsync(with: EAchievements.achievements.request, decode: { json -> [Int]? in
            guard let result = json as? [Int] else { return nil }
            return result
        }, completion: completion)
    }
    
    /// Returns the single achievement associated with the given id
    ///
    /// - Parameters:
    ///   - id: The id of the desired achievement URLQueryItem(name: "id", value: "achievementID")
    ///   - completion: Callback function to handle the data returned from the API (Result<Achievement?, APIError>)
    func get(id: URLQueryItem, completion: @escaping (Result<Achievement?, APIError>) -> Void) {
        let request = addQueryParameters(to: EAchievements.achievements.request, parameters: [id])
        switch request {
        case .success(let result):
            fetchAsync(with: result, decode: { json -> Achievement? in
                guard let res = json as? Achievement else { return nil }
                return res
            }, completion: completion)
        case .failure(let error):
            print(error)
            return
        }
    }
    
    /// Returns information for a list of associated achievement ids
    ///
    /// - Parameters:
    ///   - ids: The ids of the desired achievements, URLQueryItem(name: "ids", value: "id1, id2, id3... etc")
    ///   - completion: Callback function to handle the data returned from the API (Result<Achievement?, APIError>)
    func get(ids: URLQueryItem, completion: @escaping (Result<[Achievement]?, APIError>) -> Void) {
        let request = addQueryParameters(to: EAchievements.achievements.request, parameters: [ids])
        switch request {
        case .success(let result):
            fetchAsync(with: result, decode: { json -> [Achievement]? in
                guard let res = json as? [Achievement] else { return nil }
                return res
            }, completion: completion)
        case .failure(let error):
            print(error)
            return
        }
    }
    
    /// The daily achievements endpoint client: api.guildwars2.com/v2/achievements/daily
    class DailyAchievementClient: Client {
        
        /// Returns information about daily achievements
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<DailyAchievement?, APIError>)
        func get(completion: @escaping (Result<DailyAchievement?, APIError>) -> Void) {
            fetchAsync(with: EAchievements.daily.request, decode: { json -> DailyAchievement? in
                guard let result = json as? DailyAchievement else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    /// The daily achievements tomorrow client: api.guildwars2.com/v2/achievements/daily/tomorrow
    class DailyTomorrowAchievementClient : Client {
        
        /// Returns information about the next daily achievements
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<DailyAchievement?, APIError>)
        func get(completion: @escaping (Result<DailyAchievement?, APIError>) -> Void) {
            fetchAsync(with: EAchievements.dailyTomorrow.request, decode: { json -> DailyAchievement? in
                guard let result = json as? DailyAchievement else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    /// The achievement categories client: api.guildwars2.com/v2/achievements/categories
    class AchievementCategoryClient: Client {
        
        /// Returns a list of all achievement category ids
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EAchievements.categories.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        /// Returns the single achievement category associated with the given id
        ///
        /// - Parameters:
        ///   - id: The id of the desired achievement category URLQueryItem(name: "id", value: "categoryID")
        ///   - completion: Callback function to handle the data returned from the API (Result<AchievementCategory?, APIError>)
        func get(id: URLQueryItem, completion: @escaping (Result<AchievementCategory?, APIError>) -> Void) {
            let request = addQueryParameters(to: EAchievements.categories.request, parameters: [id])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> AchievementCategory? in
                    guard let res = json as? AchievementCategory else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
        
        /// Returns information for a list of associated achievement category ids
        ///
        /// - Parameters:
        ///   - ids: The ids of the desired achievement categories, URLQueryItem(name: "ids", value: "id1, id2, id3... etc")
        ///   - completion: Callback function to handle the data returned from the API (Result<[AchievementCategory]?, APIError>)
        func get(ids: URLQueryItem, completion: @escaping (Result<[AchievementCategory]?, APIError>) -> Void) {
            let request = addQueryParameters(to: EAchievements.categories.request, parameters: [ids])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> [AchievementCategory]? in
                    guard let res = json as? [AchievementCategory] else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
    }
    
    /// The achievement groups client: api.guildwars2.com/v2/achievements/groups
    class AchievementGroupClient: Client {
        
        /// Returns a list of all achievement group ids
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: EAchievements.groups.request, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }
        
        /// Returns the single achievement group associated with the given id
        ///
        /// - Parameters:
        ///   - id: The id of the desired achievement group URLQueryItem(name: "id", value: "groupID")
        ///   - completion: Callback function to handle the data returned from the API (Result<AchievementGroup?, APIError>)
        func get(id: URLQueryItem, completion: @escaping (Result<AchievementGroup?, APIError>) -> Void) {
            let request = addQueryParameters(to: EAchievements.groups.request, parameters: [id])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> AchievementGroup? in
                    guard let result = json as? AchievementGroup else { return nil }
                    return result
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
        
        /// Returns information for a list of associated achievement group ids
        ///
        /// - Parameters:
        ///   - ids: The ids of the desired achievement groups, URLQueryItem(name: "ids", value: "id1, id2, id3... etc")
        ///   - completion: Callback function to handle the data returned from the API (Result<[AchievementGroup]?, APIError>)
        func get(ids: URLQueryItem, completion: @escaping (Result<[AchievementGroup]?, APIError>) -> Void) {
            let request = addQueryParameters(to: EAchievements.groups.request, parameters: [ids])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> [AchievementGroup]? in
                    guard let result = json as? [AchievementGroup] else { return nil }
                    return result
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
    }
}
