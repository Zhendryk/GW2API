//
//  Sector.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct Sector : Decodable {
    let id: Int
    let name: String
    let level: Int
    let coord: [Int]
    let bounds: [Int]
    let chat_link: String
}
