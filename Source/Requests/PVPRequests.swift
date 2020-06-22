//
//  PVPEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation
import APIClient

class GetPVPInfo: GetRequest<[String]> {
    init() {
        super.init(resource: "/pvp")
    }
}

class GetPVPRankIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/pvp/ranks")
    }
}

class GetPVPRank: GetRequest<PVPRank> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/pvp/ranks", urlQueryParameters: urlQP)
    }
}

class GetPVPRanks: GetRequest<[PVPRank]> {
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/pvp/ranks", urlQueryParameters: urlQP)
    }
}

class GetPVPSeasonIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/pvp/seasons")
    }
}

class GetPVPSeason: GetRequest<PVPSeason> {
    init(id: String? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/pvp/seasons", urlQueryParameters: urlQP)
    }
}

class GetPVPSeasons: GetRequest<[PVPSeason]> {
    init(ids: [String]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/pvp/seasons", urlQueryParameters: urlQP)
    }
}

class GetNALegendaryLeaderboard: GetRequest<[PVPSeasonLeaderboard]> {
    init(id: String, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/pvp/seasons/:id/leaderboards/legendary/na", urlQueryParameters: urlQP, urlPathParameters: [":id":HTTPParameter.string(id).description])
    }
}

class GetEULegendaryLeaderboard: GetRequest<[PVPSeasonLeaderboard]> {
    init(id: String, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/pvp/seasons/:id/leaderboards/legendary/eu", urlQueryParameters: urlQP, urlPathParameters: [":id":HTTPParameter.string(id).description])
    }
}

class GetNAGuildLeaderboard: GetRequest<[PVPSeasonLeaderboard]> {
    init(id: String, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/pvp/seasons/:id/leaderboards/guild/na", urlQueryParameters: urlQP, urlPathParameters: [":id":HTTPParameter.string(id).description])
    }
}

class GetEUGuildLeaderboard: GetRequest<[PVPSeasonLeaderboard]> {
    init(id: String, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/pvp/seasons/:id/leaderboards/guild/eu", urlQueryParameters: urlQP, urlPathParameters: [":id":HTTPParameter.string(id).description])
    }
}

class GetNALadderLeaderboard: GetRequest<[PVPSeasonLeaderboard]> {
    init(id: String, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/pvp/seasons/:id/leaderboards/ladder/na", urlQueryParameters: urlQP, urlPathParameters: [":id":HTTPParameter.string(id).description])
    }
}

class GetEULadderLeaderboard: GetRequest<[PVPSeasonLeaderboard]> {
    init(id: String, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/pvp/seasons/:id/leaderboards/ladder/eu", urlQueryParameters: urlQP, urlPathParameters: [":id":HTTPParameter.string(id).description])
    }
}
