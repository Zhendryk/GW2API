//
//  WVWEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import APIClient

class GetWVWAbilityIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/wvw/abilities")
    }
}

class GetWVWAbility: GetRequest<WVWAbility> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/wvw/abilities", urlQueryParameters: urlQP)
    }
}

class GetWVWAbilities: GetRequest<[WVWAbility]> {
    init(ids: [Int]? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/wvw/abilities", urlQueryParameters: urlQP)
    }
}

class GetWVWMatchIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/wvw/matches")
    }
}

class GetWVWMatch: GetRequest<WVWMatch> {
    init(id: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        super.init(resource: "/wvw/matches", urlQueryParameters: urlQP)
    }
}

class GetWVWMatches: GetRequest<[WVWMatch]> {
    init(ids: [String]? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description))
        }
        super.init(resource: "/wvw/matches", urlQueryParameters: urlQP)
    }
}

class GetWVWMatchOverviewIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/wvw/matches/overview")
    }
}

class GetWVWMatchOverview: GetRequest<WVWMatchOverview> {
    init(id: String? = nil, world: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        if let world = world {
            urlQP.append(URLQueryItem(name: "world", value: HTTPParameter.int(world).description))
        }
        super.init(resource: "/wvw/matches/overview", urlQueryParameters: urlQP)
    }
}

class GetWVWMatchOverviews: GetRequest<[WVWMatchOverview]> {
    init(ids: [String]? = nil, world: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description))
        }
        if let world = world {
            urlQP.append(URLQueryItem(name: "world", value: HTTPParameter.int(world).description))
        }
        super.init(resource: "/wvw/matches/overview", urlQueryParameters: urlQP)
    }
}

class GetWVWMatchStatsIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/wvw/matches/stats")
    }
}

class GetWVWMatchStats: GetRequest<WVWMatchStats> {
    init(id: String? = nil, world: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        if let world = world {
            urlQP.append(URLQueryItem(name: "world", value: HTTPParameter.int(world).description))
        }
        super.init(resource: "/wvw/matches/stats", urlQueryParameters: urlQP)
    }
}

class GetWVWMatchesStats: GetRequest<[WVWMatchStats]> {
    init(ids: [String]? = nil, world: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description))
        }
        if let world = world {
            urlQP.append(URLQueryItem(name: "world", value: HTTPParameter.int(world).description))
        }
        super.init(resource: "/wvw/matches/stats", urlQueryParameters: urlQP)
    }
}

class GetWVWMatchScoreIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/wvw/matches/scores")
    }
}

class GetWVWMatchScore: GetRequest<WVWMatchScore> {
    init(id: String? = nil, world: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        if let world = world {
            urlQP.append(URLQueryItem(name: "world", value: HTTPParameter.int(world).description))
        }
        super.init(resource: "/wvw/matches/scores", urlQueryParameters: urlQP)
    }
}

class GetWVWMatchScores: GetRequest<[WVWMatchScore]> {
    init(ids: [String]? = nil, world: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description))
        }
        if let world = world {
            urlQP.append(URLQueryItem(name: "world", value: HTTPParameter.int(world).description))
        }
        super.init(resource: "/wvw/matches/scores", urlQueryParameters: urlQP)
    }
}

class GetWVWObjectiveIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/wvw/objectives")
    }
}

class GetWVWObjective: GetRequest<WVWObjective> {
    init(id: String? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/wvw/objectives", urlQueryParameters: urlQP)
    }
}

class GetWVWObjectives: GetRequest<[WVWObjective]> {
    init(ids: [String]? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/wvw/objectives", urlQueryParameters: urlQP)
    }
}

class GetWVWRankIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/wvw/ranks")
    }
}

class GetWVWRank: GetRequest<WVWRank> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/wvw/ranks", urlQueryParameters: urlQP)
    }
}

class GetWVWRanks: GetRequest<[WVWRank]> {
    init(ids: [Int]? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/wvw/ranks", urlQueryParameters: urlQP)
    }
}

class GetWVWUpgradeIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/wvw/upgrades")
    }
}

class GetWVWUpgrade: GetRequest<WVWUpgrade> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/wvw/upgrades", urlQueryParameters: urlQP)
    }
}

class GetWVWUpgrades: GetRequest<[WVWUpgrade]> {
    init(ids: [Int]? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/wvw/upgrades", urlQueryParameters: urlQP)
    }
}
