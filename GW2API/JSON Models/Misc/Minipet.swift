//
//  Minipet.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//minis
//lang, id, ids
struct Minipet : Decodable {
    let id: Int
    let name: String
    let unlock: String?
    let icon: String
    let order: Int
    let item_id: Int
}
