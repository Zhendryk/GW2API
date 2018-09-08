//
//  GuildEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Swift_Generic_API_Client

struct SearchGuild: APIRequest {
    
    typealias Response = [String]
    
    var resource: String { return "/guild/search" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var name: String?
    
    private enum CodingKeys: String, CodingKey {
        case name
    }
    
    init(name: String? = nil) {
        self.name = name
    }
}

struct GetGuildID: APIRequest {
    typealias Response = GuildDetails
    
    var resource: String { return "/guild" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(id: String) {
        self.extraPathComponents.append(id)
    }
}

struct GetGuildEmblemForegroundIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/emblem/foregrounds" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetGuildEmblemForeground: APIRequest {
    typealias Response = GuildEmblem
    
    var resource: String { return "/emblem/foregrounds" }
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

struct GetGuildEmblemForegrounds: APIRequest {
    typealias Response = [GuildEmblem]
    
    var resource: String { return "/emblem/foregrounds" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(ids: [Int]? = nil) {
        self.ids = ids
    }
}

struct GetGuildEmblemBackgroundIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/emblem/backgrounds" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetGuildEmblemBackground: APIRequest {
    typealias Response = GuildEmblem
    
    var resource: String { return "/emblem/backgrounds" }
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

struct GetGuildEmblemBackgrounds: APIRequest {
    typealias Response = [GuildEmblem]
    
    var resource: String { return "/emblem/backgrounds" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(ids: [Int]? = nil) {
        self.ids = ids
    }
}

struct GetGuildPermissionIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/guild/permissions" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetGuildPermission: APIRequest {
    typealias Response = Permissions
    
    var resource: String { return "/guild/permissions" }
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

struct GetGuildPermissions: APIRequest {
    typealias Response = [Permissions]
    
    var resource: String { return "/guild/permissions" }
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

struct GetGuildUpgradeIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/guild/upgrades" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetGuildUpgrade: APIRequest {
    typealias Response = GuildUpgrade
    
    var resource: String { return "/guild/upgrades" }
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

struct GetGuildUpgrades: APIRequest {
    typealias Response = [GuildUpgrade]
    
    var resource: String { return "/guild/upgrades" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(ids: [Int]? = nil) {
        self.ids = ids
    }
}

struct GetGuildLog: APIRequest {
    typealias Response = [GuildLog]
    
    var resource: String { return "/guild" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    private var since: Int?
    
    private enum CodingKeys: String, CodingKey {
        case since
        case access_token
    }
    
    init(since: Int? = nil, guildID: String? = nil, access_token: String? = nil) {
        self.access_token = access_token
        self.since = since
        if guildID != nil { self.extraPathComponents.append(guildID!) }
        self.extraPathComponents.append("log")
    }
}

struct GetGuildMembers: APIRequest {
    typealias Response = [GuildMember]
    
    var resource: String { return "/guild" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(guildID: String? = nil, access_token: String? = nil) {
        self.access_token = access_token
        if guildID != nil { self.extraPathComponents.append(guildID!) }
        self.extraPathComponents.append("members")
    }
}

struct GetGuildRanks: APIRequest {
    typealias Response = [GuildRank]
    
    var resource: String { return "/guild" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(guildID: String? = nil, access_token: String? = nil) {
        self.access_token = access_token
        if guildID != nil { self.extraPathComponents.append(guildID!) }
        self.extraPathComponents.append("ranks")
    }
}

struct GetGuildStash: APIRequest {
    typealias Response = [GuildStash]
    
    var resource: String { return "/guild" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(guildID: String? = nil, access_token: String? = nil) {
        self.access_token = access_token
        if guildID != nil { self.extraPathComponents.append(guildID!) }
        self.extraPathComponents.append("stash")
    }
}

struct GetGuildTreasury: APIRequest {
    typealias Response = [GuildTreasury]
    
    var resource: String { return "/guild" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(guildID: String? = nil, access_token: String? = nil) {
        self.access_token = access_token
        if guildID != nil { self.extraPathComponents.append(guildID!) }
        self.extraPathComponents.append("treasury")
    }
}

struct GetGuildTeams: APIRequest {
    typealias Response = [GuildTeam]
    
    var resource: String { return "/guild" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(guildID: String? = nil, access_token: String? = nil) {
        self.access_token = access_token
        if guildID != nil { self.extraPathComponents.append(guildID!) }
        self.extraPathComponents.append("teams")
    }
}

struct GetMyGuildUpgrades: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/guild" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(guildID: String? = nil, access_token: String? = nil) {
        self.access_token = access_token
        if guildID != nil { self.extraPathComponents.append(guildID!) }
        self.extraPathComponents.append("upgrades")
    }
}
