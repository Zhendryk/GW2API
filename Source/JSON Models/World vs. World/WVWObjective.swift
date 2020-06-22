//
//  WVWObjective.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/11/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//wvw/objectives
//lang
public struct WVWObjective : Decodable {
    public let id: String
    public let name: String
    public let type: String
    public let sector_id: Int
    public let map_id: Int
    public let upgrade_id: Int?
    public let map_type: String
    public let coord: [Float]?
    public let label_coord: [Float]?
    public let marker: String
    public let chat_link: String
}
