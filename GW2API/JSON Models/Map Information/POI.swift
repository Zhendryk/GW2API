//
//  POI.swift
//  GW2API
//
//  Created by Zhendryk on 7/11/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/pois/<poi_id>
public struct POI : Decodable {
    let name: String?
    let type: String
    let floor: Int
    let coord: [Float]
    let id: Int
    let chat_link: String
}
