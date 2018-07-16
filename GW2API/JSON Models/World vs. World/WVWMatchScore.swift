//
//  WVWMatchScore.swift
//  GW2API
//
//  Created by Zhendryk on 7/14/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct WVWMatchScore : Decodable {
    public let id: String
    public let scores: [String:Int]
    public let victory_points: [String:Int]
    public let skirmishes: [WVWMapSkirmish]
}
