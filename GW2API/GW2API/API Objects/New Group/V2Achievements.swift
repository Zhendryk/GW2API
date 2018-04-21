//
//  V2Achievements.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class V2Achievements: APIV2Object {
    
    let daily = V2AchievementsDaily(type: "achievements/daily")
    let dailyTomorrow = V2AchievementsDailyTomorrow(type: "achievements/daily/tomorrow")
    let groups = V2AchievementsGroups(type: "achievements/groups")
    let categories = V2AchievementsCategories(type: "achievements/categories")
    
    func get() -> [Int]? {
        do {
            let json: [Int]? = try super.getArr()
            return json
        } catch let err {
            print("Error: ", err)
            return nil
        }
    }
    
    func get(kwargs: [String:String]) -> [Achievement]? {
        do {
            if kwargs["id"] != nil && kwargs["ids"] == nil {
                if let json: Achievement = try super.getKW(kwargs: kwargs) {
                    return [json]
                }
                return nil
            }
            else if kwargs["ids"] != nil && kwargs["id"] == nil {
                let json: [Achievement]? = try super.getKWArr(kwargs: kwargs)
                return json
            }
            return nil
        } catch let error {
            print("Error: ", error)
            return nil
        }
    }
    
    class V2AchievementsDaily: APIV2Object {
        func get() -> DailyAchievement? {
            do {
                let json: DailyAchievement? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2AchievementsDailyTomorrow: APIV2Object {
        func get() -> DailyAchievement? {
            do {
                let json: DailyAchievement? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2AchievementsGroups: APIV2Object {
        func get() -> [String]? {
            do {
                let json: [String]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs: [String:String]) -> [AchievementGroup]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: AchievementGroup = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    let json: [AchievementGroup]? = try super.getKWArr(kwargs: kwargs)
                    return json
                }
                return nil
            } catch let error {
                print("Error: ", error)
                return nil
            }
        }
    }
    
    class V2AchievementsCategories: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs: [String:String]) -> [AchievementCategory]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: AchievementCategory = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    let json: [AchievementCategory]? = try super.getKWArr(kwargs: kwargs)
                    return json
                }
                return nil
            } catch let error {
                print("Error: ", error)
                return nil
            }
        }
    }
}
