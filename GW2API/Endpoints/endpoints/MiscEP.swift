//
//  MiscEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import GenericAPIClient

struct GetBuild: APIRequest {
    typealias Response = Build
    
    var resource: String { return "/build" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetColorIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/colors" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetColor: APIRequest {
    typealias Response = Color
    
    var resource: String { return "/colors" }
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

struct GetColors: APIRequest {
    typealias Response = [Color]
    
    var resource: String { return "/colors" }
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

struct GetCurrencyIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/currencies" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetCurrency: APIRequest {
    typealias Response = Currency
    
    var resource: String { return "/currencies" }
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

struct GetCurrencies: APIRequest {
    typealias Response = [Currency]
    
    var resource: String { return "/currencies" }
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

struct GetDungeonIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/dungeons" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetDungeon: APIRequest {
    typealias Response = Dungeon
    
    var resource: String { return "/dungeons" }
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

struct GetDungeons: APIRequest {
    typealias Response = [Dungeon]
    
    var resource: String { return "/dungeons" }
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

struct GetFileIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/files" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetFile: APIRequest {
    typealias Response = File
    
    var resource: String { return "/files" }
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

struct GetFiles: APIRequest {
    typealias Response = [File]
    
    var resource: String { return "/files" }
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


struct GetQuagganIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/quaggans" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetQuaggan: APIRequest {
    typealias Response = Quaggan
    
    var resource: String { return "/quaggans" }
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

struct GetQuaggans: APIRequest {
    typealias Response = [Quaggan]
    
    var resource: String { return "/quaggans" }
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

struct GetMiniIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/minis" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetMini: APIRequest {
    typealias Response = Minipet
    
    var resource: String { return "/minis" }
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

struct GetMinis: APIRequest {
    typealias Response = [Minipet]
    
    var resource: String { return "/minis" }
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

struct GetRaidIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/raids" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetRaid: APIRequest {
    typealias Response = Raid
    
    var resource: String { return "/raids" }
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

struct GetRaids: APIRequest {
    typealias Response = [Raid]
    
    var resource: String { return "/raids" }
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


struct GetTitleIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/titles" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetTitle: APIRequest {
    typealias Response = Title
    
    var resource: String { return "/titles" }
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

struct GetTitles: APIRequest {
    typealias Response = [Title]
    
    var resource: String { return "/titles" }
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

struct GetWorldIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/worlds" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetWorld: APIRequest {
    typealias Response = World
    
    var resource: String { return "/worlds" }
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

struct GetWorlds: APIRequest {
    typealias Response = [World]
    
    var resource: String { return "/worlds" }
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
