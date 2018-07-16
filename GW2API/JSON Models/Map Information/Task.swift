//
//  Task.swift
//  GW2API
//
//  Created by Zhendryk on 7/11/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/tasks/<task_id>
public struct Task : Decodable {
    let objective: String
    let level: Int
    let coord: [Float]
    let bounds: [[Float]]
    let id: Int
    let chat_link: String
}
