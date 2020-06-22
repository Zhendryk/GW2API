//
//  GuildEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import APIClient

class SearchGuild: GetRequest<[String]> {
    init(name: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let name = name {
            urlQP.append(URLQueryItem(name: "name", value: HTTPParameter.string(name).description))
        }
        super.init(resource: "/guild/search", urlQueryParameters: urlQP)
    }
}

class GetGuildID: GetRequest<GuildDetails> {
    init(id: String) {
        var urlQP: [URLQueryItem] = []
        urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        super.init(resource: "/guild", urlQueryParameters: urlQP)
    }
}

class GetGuildEmblemForegroundIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/emblem/foregrounds")
    }
}

class GetGuildEmblemForeground: GetRequest<GuildEmblem> {
    init(id: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        super.init(resource: "/emblem/foregrounds", urlQueryParameters: urlQP)
    }
}

class GetGuildEmblemForegrounds: GetRequest<[GuildEmblem]> {
    init(ids: [Int]? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        super.init(resource: "/emblem/foregrounds", urlQueryParameters: urlQP)
    }
}

class GetGuildEmblemBackgroundIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/emblem/backgrounds")
    }
}

class GetGuildEmblemBackground: GetRequest<GuildEmblem> {
    init(id: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        super.init(resource: "/emblem/backgrounds", urlQueryParameters: urlQP)
    }
}

class GetGuildEmblemBackgrounds: GetRequest<[GuildEmblem]> {
    init(ids: [Int]? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        super.init(resource: "/emblem/backgrounds", urlQueryParameters: urlQP)
    }
}

class GetGuildPermissionIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/guild/permissions")
    }
}

class GetGuildPermission: GetRequest<Permissions> {
    init(id: String? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/guild/permissions", urlQueryParameters: urlQP)
    }
}

class GetGuildPermissions: GetRequest<[Permissions]> {
    init(ids: [String]? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/guild/permissions", urlQueryParameters: urlQP)
    }
}

class GetGuildUpgradeIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/guild/upgrades")
    }
}

class GetGuildUpgrade: GetRequest<GuildUpgrade> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/guild/upgrades", urlQueryParameters: urlQP)
    }
}

class GetGuildUpgrades: GetRequest<[GuildUpgrade]> {
    init(ids: [Int]? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/guild/upgrades", urlQueryParameters: urlQP)
    }
}

class GetGuildLog: GetRequest<[GuildLog]> {
    init(guildID: String, since: Int? = nil, access_token: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let since = since {
            urlQP.append(URLQueryItem(name: "since", value: HTTPParameter.int(since).description))
        }
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/guild/:guildID/log", urlQueryParameters: urlQP, urlPathParameters: [":guildID" : HTTPParameter.string(guildID).description])
    }
}

class GetGuildMembers: GetRequest<[GuildMember]> {
    init(guildID: String, access_token: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/guild/:guildID/members", urlQueryParameters: urlQP, urlPathParameters: ["guildID" : HTTPParameter.string(guildID).description])
    }
}

class GetGuildRanks: GetRequest<[GuildRank]> {
    init(guildID: String, access_token: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/guild/:guildID/ranks", urlQueryParameters: urlQP, urlPathParameters: ["guildID" : HTTPParameter.string(guildID).description])
    }
}

class GetGuildStash: GetRequest<[GuildStash]> {
    init(guildID: String, access_token: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/guild/:guildID/stash", urlQueryParameters: urlQP, urlPathParameters: ["guildID" : HTTPParameter.string(guildID).description])
    }
}

class GetGuildTreasury: GetRequest<[GuildTreasury]> {
    init(guildID: String, access_token: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/guild/:guildID/treasury", urlQueryParameters: urlQP, urlPathParameters: ["guildID" : HTTPParameter.string(guildID).description])
    }
}

class GetGuildTeams: GetRequest<[GuildTeam]> {
    init(guildID: String, access_token: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/guild/:guildID/teams", urlQueryParameters: urlQP, urlPathParameters: ["guildID" : HTTPParameter.string(guildID).description])
    }
}

class GetMyGuildUpgrades: GetRequest<[Int]> {
    init(guildID: String, access_token: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/guild/:guildID/upgrades", urlQueryParameters: urlQP, urlPathParameters: ["guildID" : HTTPParameter.string(guildID).description])
    }
}
