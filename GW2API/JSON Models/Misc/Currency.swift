//
//  Currency.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//currencies
//lang, id, ids
public struct Currency : Decodable {
    public let id: Int
    public let name: String
    public let description: String
    public let icon: String
    public let order: Int
}
