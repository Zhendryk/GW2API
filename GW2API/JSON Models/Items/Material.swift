//
//  Material.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//materials
//lang, id, ids
struct Material : Decodable {
    let id: Int
    let name: String
    let items: [Int]
    let order: Int
}
