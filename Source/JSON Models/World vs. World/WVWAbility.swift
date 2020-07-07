//
//  WVWAbility.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/11/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//wvw/abilities
//lang, ids
public struct WVWAbility : Decodable, Identifiable {
    public let id: Int
    public let name: String
    public let description: String
    public let icon: String
    public let ranks: [WVWAbilityRank]
}

public struct WVWAbilityRank : Decodable {
    public let cost: Int
    public let effect: String
}
