//
//  Continents.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct Continents : Decodable {
    let id: Int
    let name: String
    let continent_dims: [Int]
    let min_zoom: Int
    let max_zoom: Int
    let floors: [Int]
}
