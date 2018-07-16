//
//  EAchievements.swift
//  GW2API
//
//  Created by Zhendryk on 7/2/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

enum EAchievements {
    case achievements
    case daily
    case dailyTomorrow
    case groups
    case categories
}


extension EAchievements: Endpoint {
    
    var path: String {
        switch self {
        case .achievements: return "achievements"
        case .daily: return "achievements/daily"
        case .dailyTomorrow: return "achievements/daily/tomorrow"
        case .groups: return "achievements/groups"
        case .categories: return "achievements/categories"
        }
    }
}
