//
//  AchievementsClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/2/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class AchievementsClient: Client {
    let daily: DailyAchievementClient = DailyAchievementClient()
    let categories: AchievementCategoryClient = AchievementCategoryClient()
    let groups: AchievementGroupClient = AchievementGroupClient()
    
    func get(from endpoint: Achievements = .achievements, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
        fetchAsync(with: endpoint.request, decode: { json -> [Int]? in
            guard let result = json as? [Int] else { return nil }
            return result
        }, completion: completion)
    }
    
    class DailyAchievementClient: Client {
        
        func get(from endpoint: Achievements = .daily, completion: @escaping (Result<DailyAchievement?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> DailyAchievement? in
                guard let result = json as? DailyAchievement else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class DailyTomorrowAchievementClient : Client {
        
        func get(from endpoint: Achievements = .dailyTomorrow, completion: @escaping (Result<DailyAchievement?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> DailyAchievement? in
                guard let result = json as? DailyAchievement else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AchievementCategoryClient: Client {
        
        func get(from endpoint: Achievements = .categories, completion: @escaping (Result<AchievementCategory?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> AchievementCategory? in
                guard let result = json as? AchievementCategory else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AchievementGroupClient: Client {

        func get(from endpoint: Achievements = .groups, completion: @escaping (Result<AchievementGroup?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> AchievementGroup? in
                guard let result = json as? AchievementGroup else { return nil }
                return result
            }, completion: completion)
        }
        
        func get(parameters: [URLQueryItem], from endpoint: Achievements = .groups, completion: @escaping (Result<AchievementGroup?, APIError>) -> Void) {
            let request = super.addQueryParameters(to: endpoint.request, parameters: parameters)
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
        
        func get(parameter: URLQueryItem, from endpoint: Achievements = .groups, completion: @escaping (Result<AchievementGroup?, APIError>) -> Void) {
            let request = super.addQueryParameters(to: endpoint.request, parameters: [parameter])
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
    }
}
