//
//  Continent.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//continents
//lang, id, ids
/*subresources:
    <continent_id>/floors
    <continent_id>/floors/<floor_id>/regions
    <continent_id>/floors/<floor_id>/regions/<region_id>/maps
    <continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/sectors
    <continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/pois
    <continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/tasks
 */
public struct Continent : Decodable, Identifiable {
    public let id: Int
    public let name: String
    public let continent_dims: [Int]
    public let min_zoom: Int
    public let max_zoom: Int
    public let floors: [Int]
}
