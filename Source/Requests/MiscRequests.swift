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

class CreateSubtoken: GetRequest<Subtoken> {
    init(access_token: String?, expire: String?, permissions: [String]?, urls: [String]?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        if let expire = expire {
            urlQP.append(URLQueryItem(name: "expire", value: HTTPParameter.string(expire).description))
        }
        if let permissions = permissions {
            urlQP.append(URLQueryItem(name: "permissions", value: HTTPParameter.stringArr(permissions).description))
        }
        if let urls = urls {
            urlQP.append(URLQueryItem(name: "urls", value: HTTPParameter.stringArr(urls).description))
        }
        super.init(resource: "/createsubtoken", urlQueryParameters: urlQP)
    }
}

class GetDailyCrafting: GetRequest<[String]> {
    init() {
        super.init(resource: "/dailycrafting")
    }
}

class GetEmoteIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/emotes")
    }
}

class GetEmote: GetRequest<Emote> {
    init(id: String) {
        super.init(resource: "/emotes", urlQueryParameters: [URLQueryItem(name: "id", value: HTTPParameter.string(id).description)])
    }
}

class GetEmotes: GetRequest<[Emote]> {
    init(ids: [String]) {
        super.init(resource: "/emotes", urlQueryParameters: [URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description)])
    }
}

class GetMapChests: GetRequest<[String]> {
    init() {
        super.init(resource: "/mapchests")
    }
}


class GetNoveltyIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/novelties")
    }
}

class GetNovelty: GetRequest<Novelty> {
    init(id: Int, lang: String?) {
        var urlQP: [URLQueryItem] = [URLQueryItem(name: "id", value: HTTPParameter.int(id).description)]
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/novelties", urlQueryParameters: urlQP)
    }
}

class GetNovelties: GetRequest<[Novelty]> {
    init(ids: [Int]?, lang: String?, page: Int?, page_size: Int?) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        super.init(resource: "/novelties", urlQueryParameters: urlQP)
    }
}

class GetQuestIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/quests")
    }
}

class GetQuest: GetRequest<Quest> {
    init(id: Int, lang: String?) {
        var urlQP: [URLQueryItem] = [URLQueryItem(name: "id", value: HTTPParameter.int(id).description)]
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/quests", urlQueryParameters: urlQP)
    }
}

class GetQuests: GetRequest<[Quest]> {
    init(ids: [Int]?, lang: String?, page: Int?, page_size: Int?) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        super.init(resource: "/quests", urlQueryParameters: urlQP)
    }
}

class GetWorldBosses: GetRequest<[String]> {
    init() {
        super.init(resource: "/worldbosses")
    }
}
