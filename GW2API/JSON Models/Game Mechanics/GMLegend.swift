//
//  GMLegend.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/6/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct GMLegend : Decodable {
    let id: String
    let swap: Int
    let heal: Int
    let elite: Int
    let utilities: [Int]
}
