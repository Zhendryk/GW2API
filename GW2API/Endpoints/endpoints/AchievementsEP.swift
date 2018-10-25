//
//  AchievementsEndpoints.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import GenericAPIClient

struct GetAchievementIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/achievements" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetAchievement: APIRequest {
    typealias Response = Achievement
    
    var resource: String { return "/achievements" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private let id: Int
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: Int) {
        self.id = id
    }
}

struct GetAchievements: APIRequest {
    typealias Response = [Achievement]
    
    var resource: String { return "/achievements" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private let ids: [Int]
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(ids: [Int]) {
        self.ids = ids
    }
}

struct GetDailyAchievements: APIRequest {
    typealias Response = DailyAchievement
    
    var resource: String { return "/achievements/daily" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetDailyTomorrowAchievements: APIRequest {
    typealias Response = DailyAchievement
    
    var resource: String { return "/achievements/daily/tomorrow" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetAchievementCategoryIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/achievements/categories" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetAchievementCategory: APIRequest {
    typealias Response = AchievementCategory
    
    var resource: String { return "/achievements/categories" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private let id: Int
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: Int) {
        self.id = id
    }
}

struct GetAchievementCategories: APIRequest {
    typealias Response = [AchievementCategory]
    
    var resource: String { return "/achievements/categories" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private let ids: [Int]
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(ids: [Int]) {
        self.ids = ids
    }
}

struct GetAchievementGroupIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/achievements/groups" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetAchievementGroup: APIRequest {
    typealias Response = AchievementGroup
    
    var resource: String { return "/achievements/groups" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private let id: String
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: String) {
        self.id = id
    }
}

struct GetAchievementGroups: APIRequest {
    typealias Response = [AchievementGroup]
    
    var resource: String { return "/achievements/groups" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private let ids: [String]
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(ids: [String]) {
        self.ids = ids
    }
}
