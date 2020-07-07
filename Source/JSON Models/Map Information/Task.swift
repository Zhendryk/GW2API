//
//  Task.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/11/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/tasks/<task_id>
public struct Task : Decodable, Identifiable {
    public let objective: String
    public let level: Int
    public let coord: [Float]
    public let bounds: [[Float]]
    public let id: Int
    public let chat_link: String
}
