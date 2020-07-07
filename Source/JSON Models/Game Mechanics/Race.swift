//
//  GMRace.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//races
//id, ids
public struct Race: Decodable, Identifiable {
    public let id: String
    public let skills: [Int]
}
