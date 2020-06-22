//
//  CharacterRequests.swift
//  GW2API
//
//  Created by Jonathan Bailey on 6/21/20.
//  Copyright © 2020 Jonathan Bailey. All rights reserved.
//

import APIClient

class GetAccountCharacterNames: GetRequest<[String]> {
    init(access_token: String?) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/characters", urlQueryParameters: urlQP)
    }
}

class GetAccountCharacter: GetRequest<AccountCharacter> {
    init(access_token: String?, characterName: String) {
        var urlQP: [URLQueryItem] = [URLQueryItem(name: "id", value: HTTPParameter.string(characterName).description)]
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/characters", urlQueryParameters: urlQP)
    }
}

// TODO: https://wiki.guildwars2.com/wiki/API:2/characters/:id/backstory

// TODO: https://wiki.guildwars2.com/wiki/API:2/characters/:id/buildtabs

// TODO: https://wiki.guildwars2.com/wiki/API:2/characters/:id/core

// TODO: https://wiki.guildwars2.com/wiki/API:2/characters/:id/crafting

// TODO: https://wiki.guildwars2.com/wiki/API:2/characters/:id/equipment

// TODO: https://wiki.guildwars2.com/wiki/API:2/characters/:id/equipmenttabs

// TODO: https://wiki.guildwars2.com/wiki/API:2/characters/:id/heropoints

// TODO: https://wiki.guildwars2.com/wiki/API:2/characters/:id/inventory

// TODO: https://wiki.guildwars2.com/wiki/API:2/characters/:id/quests

// TODO: https://wiki.guildwars2.com/wiki/API:2/characters/:id/recipes

// TODO: https://wiki.guildwars2.com/wiki/API:2/characters/:id/sab

// TODO: https://wiki.guildwars2.com/wiki/API:2/characters/:id/skills

// TODO: https://wiki.guildwars2.com/wiki/API:2/characters/:id/specializations

// TODO: https://wiki.guildwars2.com/wiki/API:2/characters/:id/training
