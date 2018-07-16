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
    let id: Int
    let name: String
    let description: String
    let icon: String
    let order: Int
}
