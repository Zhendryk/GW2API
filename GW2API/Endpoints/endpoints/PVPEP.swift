//
//  PVPEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Swift_Generic_API_Client

struct GetPVPInfo: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/pvp" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetPVPRankIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/pvp/ranks" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetPVPRank: APIRequest {
    typealias Response = PVPRank
    
    var resource: String { return "/pvp/ranks" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: Int? = nil) {
        self.id = id
    }
}

struct GetPVPRanks: APIRequest {
    typealias Response = [PVPRank]
    
    var resource: String { return "/pvp/ranks" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    private var page: Int?
    private var page_size: Int?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
    }
}

struct GetPVPSeasonIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/pvp/seasons" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetPVPSeason: APIRequest {
    typealias Response = PVPSeason
    
    var resource: String { return "/pvp/seasons" }
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

struct GetPVPSeasons: APIRequest {
    typealias Response = [PVPSeason]
    
    var resource: String { return "/pvp/seasons" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [String]?
    private var page: Int?
    private var page_size: Int?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
    }
    
    init(ids: [String]? = nil, page: Int? = nil, page_size: Int? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
    }
}

struct GetNALegendaryLeaderboard: APIRequest {
    typealias Response = [PVPSeasonLeaderboard]
    
    var resource: String { return "/pvp/seasons" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(id: String) {
        self.extraPathComponents.append(id)
        self.extraPathComponents.append("leaderboards/legendary/na")
    }
}

struct GetEULegendaryLeaderboard: APIRequest {
    typealias Response = [PVPSeasonLeaderboard]
    
    var resource: String { return "/pvp/seasons" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(id: String) {
        self.extraPathComponents.append(id)
        self.extraPathComponents.append("leaderboards/legendary/eu")
    }
}

struct GetNAGuildLeaderboard: APIRequest {
    typealias Response = [PVPSeasonLeaderboard]
    
    var resource: String { return "/pvp/seasons" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(id: String) {
        self.extraPathComponents.append(id)
        self.extraPathComponents.append("leaderboards/guild/na")
    }
}

struct GetEUGuildLeaderboard: APIRequest {
    typealias Response = [PVPSeasonLeaderboard]
    
    var resource: String { return "/pvp/seasons" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(id: String) {
        self.extraPathComponents.append(id)
        self.extraPathComponents.append("leaderboards/guild/eu")
    }
}

struct GetNALadderLeaderboard: APIRequest {
    typealias Response = [PVPSeasonLeaderboard]
    
    var resource: String { return "/pvp/seasons" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(id: String) {
        self.extraPathComponents.append(id)
        self.extraPathComponents.append("leaderboards/ladder/na")
    }
}

struct GetEULadderLeaderboard: APIRequest {
    typealias Response = [PVPSeasonLeaderboard]
    
    var resource: String { return "/pvp/seasons" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(id: String) {
        self.extraPathComponents.append(id)
        self.extraPathComponents.append("leaderboards/ladder/eu")
    }
}
