//
//  GMLegend.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/6/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//legends
//lang, page, page_size, id, ids
struct GMLegend : Decodable {
    let id: String
    let swap: Int
    let heal: Int
    let elite: Int
    let utilities: [Int]
}
