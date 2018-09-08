//
//  AchievementsClient.swift
//  GW2API
//
//  Created by Zhendryk on 7/2/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//
import Swift_Generic_API_Client

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
    ///   - completion: Callback function to handle the data returned from the API
    public func get(completion: @escaping RequestCallback<[Int]>) {
        _ = self.client.send(request: GetAchievementIDs()) { result in
            completion(result)
        }
    }
    
    /// Returns the single achievement associated with the given id
    ///
    /// - Parameters:
    ///   - id: The id of the desired achievement
    ///   - completion: Callback function to handle the data returned from the API
    public func get(id: Int, completion: @escaping RequestCallback<Achievement>) {
        _ = self.client.send(request: GetAchievement(id: id)) { result in
            completion(result)
        }
    }
    
    /// Returns information for a list of associated achievement ids
    ///
    /// - Parameters:
    ///   - ids: The ids of the desired achievements "id1, id2, id3... etc"
    ///   - completion: Callback function to handle the data returned from the API
    public func get(ids: [Int], completion: @escaping RequestCallback<[Achievement]>) {
        _ = self.client.send(request: GetAchievements(ids: ids)) { result in
            completion(result)
        }
    }

    
    /// The daily achievements endpoint client: api.guildwars2.com/v2/achievements/daily
    public class DailyAchievementClient : Client {
        
        public func get(completion: @escaping RequestCallback<DailyAchievement>) {
            _ = self.client.send(request: GetDailyAchievements()) { result in
                completion(result)
            }
        }
    }
    
    /// The daily achievements tomorrow client: api.guildwars2.com/v2/achievements/daily/tomorrow
    public class DailyTomorrowAchievementClient : Client {
        
        /// Returns information about the next daily achievements
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API
        public func get(completion: @escaping RequestCallback<DailyAchievement>) {
            _ = self.client.send(request: GetDailyTomorrowAchievements()) { result in
                completion(result)
            }
        }
    }
    
    /// The achievement categories client: api.guildwars2.com/v2/achievements/categories
    public class AchievementCategoryClient: Client {
        
        /// Returns a list of all achievement category ids
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API
        public func get(completion: @escaping RequestCallback<[Int]>) {
            _ = self.client.send(request: GetAchievementCategoryIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the single achievement category associated with the given id
        ///
        /// - Parameters:
        ///   - id: The id of the desired achievement category
        ///   - completion: Callback function to handle the data returned from the API
        public func get(id: Int, completion: @escaping RequestCallback<AchievementCategory>) {
            _ = self.client.send(request: GetAchievementCategory(id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns information for a list of associated achievement category ids
        ///
        /// - Parameters:
        ///   - ids: The ids of the desired achievement categories "id1, id2, id3... etc"
        ///   - completion: Callback function to handle the data returned from the API
        public func get(ids: [Int], completion: @escaping RequestCallback<[AchievementCategory]>) {
            _ = self.client.send(request: GetAchievementCategories(ids: ids)) { result in
                completion(result)
            }
        }
    }
    
    /// The achievement groups client: api.guildwars2.com/v2/achievements/groups
    public class AchievementGroupClient: Client {
        
        /// Returns a list of all achievement group ids
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API
        public func get(completion: @escaping RequestCallback<[String]>) {
            _ = self.client.send(request: GetAchievementGroupIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the single achievement group associated with the given id
        ///
        /// - Parameters:
        ///   - id: The id of the desired achievement group
        ///   - completion: Callback function to handle the data returned from the API
        public func get(id: String, completion: @escaping RequestCallback<AchievementGroup>) {
            _ = self.client.send(request: GetAchievementGroup(id: id)) { result in
                completion(result)
            }
        }
        
        //TODO: Compare to old and figure out what's going on... check out the percent encoding for array parameters
        /// Returns information for a list of associated achievement group ids
        ///
        /// - Parameters:
        ///   - ids: The ids of the desired achievement groups "id1, id2, id3... etc"
        ///   - completion: Callback function to handle the data returned from the API
        public func get(ids: [String], completion: @escaping RequestCallback<[AchievementGroup]>) {
            _ = self.client.send(request: GetAchievementGroups(ids: ids)) { result in
                completion(result)
            }
        }
    }
}
