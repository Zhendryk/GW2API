//
//  AchievementsClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/2/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class AchievementsClient: Client {
    let daily: DailyAchievementClient = DailyAchievementClient()
    let dailyTomorrow: DailyTomorrowAchievementClient = DailyTomorrowAchievementClient()
    let categories: AchievementCategoryClient = AchievementCategoryClient()
    let groups: AchievementGroupClient = AchievementGroupClient()
    
    func get(from endpoint: EAchievements = .achievements, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
        fetchAsync(with: endpoint.request, decode: { json -> [Int]? in
            guard let result = json as? [Int] else { return nil }
            return result
        }, completion: completion)
    }
    
    func get(id: URLQueryItem, from endpoint: EAchievements = .achievements, completion: @escaping (Result<Achievement?, APIError>) -> Void) {
        let request = addQueryParameters(to: endpoint.request, parameters: [id])
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
    
    func get(ids: URLQueryItem, from endpoint: EAchievements = .achievements, completion: @escaping (Result<[Achievement]?, APIError>) -> Void) {
        let request = addQueryParameters(to: endpoint.request, parameters: [ids])
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
    
    class DailyAchievementClient: Client {
        
        func get(from endpoint: EAchievements = .daily, completion: @escaping (Result<DailyAchievement?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> DailyAchievement? in
                guard let result = json as? DailyAchievement else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class DailyTomorrowAchievementClient : Client {
        
        func get(from endpoint: EAchievements = .dailyTomorrow, completion: @escaping (Result<DailyAchievement?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> DailyAchievement? in
                guard let result = json as? DailyAchievement else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AchievementCategoryClient: Client {
        
        func get(from endpoint: EAchievements = .categories, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        func get(id: URLQueryItem, from endpoint: EAchievements = .categories, completion: @escaping (Result<AchievementCategory?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [id])
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
        
        func get(ids: URLQueryItem, from endpoint: EAchievements = .categories, completion: @escaping (Result<[AchievementCategory]?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [ids])
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
    
    class AchievementGroupClient: Client {

        func get(from endpoint: EAchievements = .groups, completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }
        
        func get(id: URLQueryItem, from endpoint: EAchievements = .groups, completion: @escaping (Result<AchievementGroup?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [id])
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
        
        func get(ids: URLQueryItem, from endpoint: EAchievements = .groups, completion: @escaping (Result<[AchievementGroup]?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [ids])
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
