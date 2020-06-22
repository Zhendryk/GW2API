//
//  Floor.swift
//  GW2API
//
//  Created by Zhendryk on 7/12/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct Floor : Decodable {
    public let texture_dims: [Int]
    public let clamped_view: [[Int]]
    public let regions: [String:Region]
    public let id: Int
}
