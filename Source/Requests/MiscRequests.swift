//
//  MiscEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation
import APIClient

class GetBuild: GetRequest<Build> {
    init() {
        super.init(resource: "/build")
    }
}

class GetColorIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/colors")
    }
}

class GetColor: GetRequest<Color> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/colors", urlQueryParameters: urlQP)
    }
}

class GetColors: GetRequest<[Color]> {
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
        super.init(resource: "/colors", urlQueryParameters: urlQP)
    }
}

class GetCurrencyIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/currencies")
    }
}

class GetCurrency: GetRequest<Currency> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/currencies", urlQueryParameters: urlQP)
    }
}

class GetCurrencies: GetRequest<[Currency]> {
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
        super.init(resource: "/currencies", urlQueryParameters: urlQP)
    }
}

class GetDungeonIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/dungeons")
    }
}

class GetDungeon: GetRequest<Dungeon> {
    init(id: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        super.init(resource: "/dungeons", urlQueryParameters: urlQP)
    }
}

class GetDungeons: GetRequest<[Dungeon]> {
    init(ids: [String]? = nil, page: Int? = nil, page_size: Int? = nil) {
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
        super.init(resource: "/dungeons", urlQueryParameters: urlQP)
    }
}

class GetFileIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/files")
    }
}

class GetFile: GetRequest<File> {
    init(id: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        super.init(resource: "/files", urlQueryParameters: urlQP)
    }
}

class GetFiles: GetRequest<[File]> {
    init(ids: [String]? = nil, page: Int? = nil, page_size: Int? = nil) {
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
        super.init(resource: "/files", urlQueryParameters: urlQP)
    }
}


class GetQuagganIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/quaggans")
    }
}

class GetQuaggan: GetRequest<Quaggan> {
    init(id: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        super.init(resource: "/quaggans", urlQueryParameters: urlQP)
    }
}

class GetQuaggans: GetRequest<[Quaggan]> {
    init(ids: [String]? = nil, page: Int? = nil, page_size: Int? = nil) {
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
        super.init(resource: "/quaggans", urlQueryParameters: urlQP)
    }
}

class GetMiniIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/minis")
    }
}

class GetMini: GetRequest<Minipet> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/minis", urlQueryParameters: urlQP)
    }
}

class GetMinis: GetRequest<[Minipet]> {
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
        super.init(resource: "/minis", urlQueryParameters: urlQP)
    }
}

class GetRaidIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/raids")
    }
}

class GetRaid: GetRequest<Raid> {
    init(id: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        super.init(resource: "/raids", urlQueryParameters: urlQP)
    }
}

class GetRaids: GetRequest<[Raid]> {
    init(ids: [String]? = nil, page: Int? = nil, page_size: Int? = nil) {
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
        super.init(resource: "/raids", urlQueryParameters: urlQP)
    }
}


class GetTitleIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/titles")
    }
}

class GetTitle: GetRequest<Title> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/titles", urlQueryParameters: urlQP)
    }
}

class GetTitles: GetRequest<[Title]> {
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
        super.init(resource: "/titles", urlQueryParameters: urlQP)
    }
}

class GetWorldIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/worlds")
    }
}

class GetWorld: GetRequest<World> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/worlds", urlQueryParameters: urlQP)
    }
}

class GetWorlds: GetRequest<[World]> {
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
        super.init(resource: "/worlds", urlQueryParameters: urlQP)
    }
}

class GetMounts: GetRequest<[String]> {
    init() {
        super.init(resource: "/mounts")
    }
}

class GetMountTypeIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/mounts/types")
    }
}

class GetMountType: GetRequest<MountType> {
    init(id: String? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/mounts/types", urlQueryParameters: urlQP)
    }
}

class GetMountTypes: GetRequest<[MountType]> {
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
        super.init(resource: "/mounts/types", urlQueryParameters: urlQP)
    }
}

class GetMountSkinIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/mounts/skins")
    }
}

class GetMountSkin: GetRequest<MountSkin> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/mounts/skins", urlQueryParameters: urlQP)
    }
}

class GetMountSkins: GetRequest<[MountSkin]> {
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
        super.init(resource: "/mounts/skins", urlQueryParameters: urlQP)
    }
}

// TODO: https://wiki.guildwars2.com/wiki/API:2/createsubtoken

// TODO: https://wiki.guildwars2.com/wiki/API:2/dailycrafting

// TODO: https://wiki.guildwars2.com/wiki/API:2/emotes

// TODO: https://wiki.guildwars2.com/wiki/API:2/mapchests

// TODO: https://wiki.guildwars2.com/wiki/API:2/novelties

// TODO: https://wiki.guildwars2.com/wiki/API:2/quests

// TODO: https://wiki.guildwars2.com/wiki/API:2/worldbosses
