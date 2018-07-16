//
//  Map.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>
public struct Map : Decodable {
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
