//
//  WVWMatchScore.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/14/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct WVWMatchScore : Decodable {
    let id: String
    let scores: [String:Int]
    let victory_points: [String:Int]
    let skirmishes: [WVWMapSkirmish]
}
