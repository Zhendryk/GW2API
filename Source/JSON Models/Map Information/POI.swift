//
//  POI.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/11/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/pois/<poi_id>
public struct POI : Decodable {
    public let name: String?
    public let type: String
    public let floor: Int
    public let coord: [Float]
    public let id: Int
    public let chat_link: String
}
