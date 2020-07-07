//
//  Map.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>
public struct Map : Decodable, Identifiable {
    public let id: Int
    public let name: String
    public let min_level: Int
    public let max_level: Int
    public let default_floor: Int
    public let floors: [Int]
    public let region_id: Int
    public let region_name: String?
    public let continent_id: Int
    public let continent_name: String
    public let map_rect: [Int]
    public let continent_rect: [Int]
}
