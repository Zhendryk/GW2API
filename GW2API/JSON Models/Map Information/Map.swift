//
//  Map.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct Map : Decodable {
    let id: Int
    let name: String
    let min_level: Int
    let max_level: Int
    let default_floor: Int
    let floors: [Int]
    let region_id: Int
    let region_name: String?
    let continent_id: Int
    let continent_name: String
    let map_rect: [Int]
    let continent_rect: [Int]
}
