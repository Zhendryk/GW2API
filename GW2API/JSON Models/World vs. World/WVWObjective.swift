//
//  WVWObjective.swift
//  GW2API
//
//  Created by Zhendryk on 7/11/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//wvw/objectives
//lang
struct WVWObjective : Decodable {
    let id: String
    let name: String
    let type: String
    let sector_id: Int
    let map_id: Int
    let upgrade_id: Int?
    let map_type: String
    let coord: [Float]?
    let label_coord: [Float]?
    let marker: String
    let chat_link: String
}
