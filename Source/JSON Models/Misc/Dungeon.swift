//
//  Dungeon.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//dungeons
//lang, id, ids
public struct Dungeon : Decodable {
    public let id: String
    public let paths: [path]
    
    public struct path : Decodable {
        public let id: String
        public let type: String
    }
}
