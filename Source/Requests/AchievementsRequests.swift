//
//  AchievementsEndpoints.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation
import APIClient

class GetAchievementIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/achievements")
    }
}

class GetAchievement: GetRequest<Achievement> {
    init(id: Int, lang: String? = nil) {
        var urlQP: [URLQueryItem] = [URLQueryItem(name: "id", value: HTTPParameter.int(id).description)]
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/achievements", urlQueryParameters: urlQP)
    }
}

class GetAchievements: GetRequest<[Achievement]> {
    init(ids: [Int], lang: String? = nil) {
        var urlQP: [URLQueryItem] = [URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description)]
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/achievements", urlQueryParameters: urlQP)
    }
}

class GetDailyAchievements: GetRequest<DailyAchievement> {
    init() {
        super.init(resource: "/achievements/daily")
    }
}

class GetDailyTomorrowAchievements: GetRequest<DailyAchievement> {
    init() {
        super.init(resource: "/achievements/daily/tomorrow")
    }
}

class GetAchievementCategoryIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/achievements/categories")
    }
}

class GetAchievementCategory: GetRequest<AchievementCategory> {
    init(id: Int, lang: String? = nil) {
        var urlQP: [URLQueryItem] = [URLQueryItem(name: "id", value: HTTPParameter.int(id).description)]
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/achievements/categories", urlQueryParameters: urlQP)
    }
}

class GetAchievementCategories: GetRequest<[AchievementCategory]> {
    init(ids: [Int], lang: String? = nil) {
        var urlQP: [URLQueryItem] = [URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description)]
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/achievements/categories", urlQueryParameters: urlQP)
    }
}

class GetAchievementGroupIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/achievements/groups")
    }
}

class GetAchievementGroup: GetRequest<AchievementGroup> {
    init(id: String, lang: String? = nil) {
        var urlQP: [URLQueryItem] = [URLQueryItem(name: "id", value: HTTPParameter.string(id).description)]
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/achievements/groups", urlQueryParameters: urlQP)
    }
}

class GetAchievementGroups: GetRequest<[AchievementGroup]> {
    init(ids: [String], lang: String? = nil) {
        var urlQP: [URLQueryItem] = [URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description)]
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/achievements/groups", urlQueryParameters: urlQP)
    }
}
