//
//  Sector.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/sectors/<sector_id>
struct Sector : Decodable {
    let id: Int
    let name: String?
    let level: Int
    let coord: [Float]
    let bounds: [[Float]]
    let chat_link: String
}
