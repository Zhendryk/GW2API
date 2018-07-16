//
//  Floor.swift
//  GW2API
//
//  Created by Zhendryk on 7/12/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct Floor : Decodable {
    let texture_dims: [Int]
    let clamped_view: [[Int]]
    let regions: [String:Region]
    let id: Int
}
