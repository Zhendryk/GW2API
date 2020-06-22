//
//  WVWEP.swift
//  GW2API
//
//  Created by Zhendryk on 9/7/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

import GenericAPIClient

struct GetWVWAbilityIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/wvw/abilities" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetWVWAbility: APIRequest {
    typealias Response = WVWAbility
    
    var resource: String { return "/wvw/abilities" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: Int? = nil, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetWVWAbilities: APIRequest {
    typealias Response = [WVWAbility]
    
    var resource: String { return "/wvw/abilities" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case lang
    }
    
    init(ids: [Int]? = nil, lang: String? = nil) {
        self.ids = ids
        self.lang = lang
    }
}

struct GetWVWMatchIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/wvw/matches" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetWVWMatch: APIRequest {
    typealias Response = WVWMatch
    
    var resource: String { return "/wvw/matches" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: String? = nil) {
        self.id = id
    }
}

struct GetWVWMatches: APIRequest {
    typealias Response = [WVWMatch]
    
    var resource: String { return "/wvw/matches" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [String]?
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(ids: [String]? = nil) {
        self.ids = ids
    }
}

struct GetWVWMatchOverviewIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/wvw/matches/overview" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetWVWMatchOverview: APIRequest {
    typealias Response = WVWMatchOverview
    
    var resource: String { return "/wvw/matches/overview" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: String?
    private var world: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case world
    }
    
    init(id: String? = nil, world: Int? = nil) {
        self.id = id
        self.world = world
    }
}

struct GetWVWMatchOverviews: APIRequest {
    typealias Response = [WVWMatchOverview]
    
    var resource: String { return "/wvw/matches/overview" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [String]?
    private var world: Int?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case world
    }
    
    init(ids: [String]? = nil, world: Int? = nil) {
        self.ids = ids
        self.world = world
    }
}

struct GetWVWMatchStatsIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/wvw/matches/stats" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetWVWMatchStats: APIRequest {
    typealias Response = WVWMatchStats
    
    var resource: String { return "/wvw/matches/stats" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: String?
    private var world: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case world
    }
    
    init(id: String? = nil, world: Int? = nil) {
        self.id = id
        self.world = world
    }
}

struct GetWVWMatchesStats: APIRequest {
    typealias Response = [WVWMatchStats]
    
    var resource: String { return "/wvw/matches/stats" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [String]?
    private var world: Int?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case world
    }
    
    init(ids: [String]? = nil, world: Int? = nil) {
        self.ids = ids
        self.world = world
    }
}

struct GetWVWMatchScoreIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/wvw/matches/scores" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetWVWMatchScore: APIRequest {
    typealias Response = WVWMatchScore
    
    var resource: String { return "/wvw/matches/scores" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: String?
    private var world: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case world
    }
    
    init(id: String? = nil, world: Int? = nil) {
        self.id = id
        self.world = world
    }
}

struct GetWVWMatchScores: APIRequest {
    typealias Response = [WVWMatchScore]
    
    var resource: String { return "/wvw/matches/scores" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [String]?
    private var world: Int?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case world
    }
    
    init(ids: [String]? = nil, world: Int? = nil) {
        self.ids = ids
        self.world = world
    }
}

struct GetWVWObjectiveIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/wvw/objectives" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetWVWObjective: APIRequest {
    typealias Response = WVWObjective
    
    var resource: String { return "/wvw/objectives" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: String?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: String? = nil, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetWVWObjectives: APIRequest {
    typealias Response = [WVWObjective]
    
    var resource: String { return "/wvw/objectives" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [String]?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case lang
    }
    
    init(ids: [String]? = nil, lang: String? = nil) {
        self.ids = ids
        self.lang = lang
    }
}

struct GetWVWRankIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/wvw/ranks" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetWVWRank: APIRequest {
    typealias Response = WVWRank
    
    var resource: String { return "/wvw/ranks" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: Int? = nil, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetWVWRanks: APIRequest {
    typealias Response = [WVWRank]
    
    var resource: String { return "/wvw/ranks" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case lang
    }
    
    init(ids: [Int]? = nil, lang: String? = nil) {
        self.ids = ids
        self.lang = lang
    }
}

struct GetWVWUpgradeIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/wvw/upgrades" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetWVWUpgrade: APIRequest {
    typealias Response = WVWUpgrade
    
    var resource: String { return "/wvw/upgrades" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: Int? = nil, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetWVWUpgrades: APIRequest {
    typealias Response = [WVWUpgrade]
    
    var resource: String { return "/wvw/upgrades" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case lang
    }
    
    init(ids: [Int]? = nil, lang: String? = nil) {
        self.ids = ids
        self.lang = lang
    }
}
