//
//  World.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//worlds
//lang, id, ids
struct World : Decodable {
    let id: Int
    let name: String
    let population: String
}
