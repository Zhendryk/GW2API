//
//  V2Achievements.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class V2Achievements: APIV2Object {
    
    public let daily = V2AchievementsDaily(type: "achievements/daily")
    public let dailyTomorrow = V2AchievementsDailyTomorrow(type: "achievements/daily/tomorrow")
    public let groups = V2AchievementsGroups(type: "achievements/groups")
    public let categories = V2AchievementsCategories(type: "achievements/categories")
    
    public func get() -> [Int]? {
        do {
            let json: [Int]? = try super.getArr()
            return json
        } catch let err {
            print("Error: ", err)
            return nil
        }
    }
    
    public func get(kwargs: [String:String]) -> [Achievement]? {
        return nil
    }
    
    public class V2AchievementsDaily: APIV2Object {
        
    }
    
    public class V2AchievementsDailyTomorrow: APIV2Object {
        
    }
    
    public class V2AchievementsGroups: APIV2Object {
        
    }
    
    public class V2AchievementsCategories: APIV2Object {
        
    }
}
