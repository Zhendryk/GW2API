//
//  AchievementsEndpoints.swift
//  GW2API
//
//  Created by Zhendryk on 9/7/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
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
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: Int, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetAchievements: APIRequest {
    typealias Response = [Achievement]
    
    var resource: String { return "/achievements" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private let ids: [Int]
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case lang
    }
    
    init(ids: [Int], lang: String? = nil) {
        self.ids = ids
        self.lang = lang
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
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: Int, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetAchievementCategories: APIRequest {
    typealias Response = [AchievementCategory]
    
    var resource: String { return "/achievements/categories" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private let ids: [Int]
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case lang
    }
    
    init(ids: [Int], lang: String? = nil) {
        self.ids = ids
        self.lang = lang
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
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: String, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetAchievementGroups: APIRequest {
    typealias Response = [AchievementGroup]
    
    var resource: String { return "/achievements/groups" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private let ids: [String]
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case lang
    }
    
    init(ids: [String], lang: String? = nil) {
        self.ids = ids
        self.lang = lang
    }
}
