//
//  Sector.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/sectors/<sector_id>
public struct Sector : Decodable {
    public let id: Int
    public let name: String?
    public let level: Int
    public let coord: [Float]
    public let bounds: [[Float]]
    public let chat_link: String
}
