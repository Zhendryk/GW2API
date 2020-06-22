//
//  World.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//worlds
//lang, id, ids
public struct World : Decodable {
    public let id: Int
    public let name: String
    public let population: String
}
