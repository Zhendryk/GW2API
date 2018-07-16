//
//  Dungeon.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//dungeons
//lang, id, ids
struct Dungeon : Decodable {
    let id: String
    let paths: [path]
    
    struct path : Decodable {
        let id: String
        let type: String
    }
}
