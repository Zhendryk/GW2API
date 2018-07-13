//
//  Floor.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/12/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct Floor : Decodable {
    let texture_dims: [Int]
    let clamped_view: [[Int]]
    let regions: [String:Region]
    let id: Int
}
