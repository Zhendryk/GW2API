//
//  GMRace.swift
//  GW2API
//
//  Created by Zhendryk on 4/21/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//races
//id, ids
public struct Race: Decodable {
    public let id: String
    public let skills: [Int]
}
