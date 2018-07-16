//
//  Continent.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
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
public struct Continent : Decodable {
    let id: Int
    let name: String
    let continent_dims: [Int]
    let min_zoom: Int
    let max_zoom: Int
    let floors: [Int]
}
