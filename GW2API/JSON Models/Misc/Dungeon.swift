//
//  Dungeon.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct Dungeon : Decodable {
    let id: String
    let paths: [path]
    
    struct path : Decodable {
        let id: String
        let type: String
    }
}
