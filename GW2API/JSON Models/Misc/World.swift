//
//  World.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//worlds
//lang, id, ids
public struct World : Decodable {
    let id: Int
    let name: String
    let population: String
}
