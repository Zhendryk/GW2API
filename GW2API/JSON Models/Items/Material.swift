//
//  Material.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//materials
//lang, id, ids
public struct Material : Decodable {
    public let id: Int
    public let name: String
    public let items: [Int]
    public let order: Int
}
