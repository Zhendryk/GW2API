//
//  Floor.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/12/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct Floor : Decodable, Identifiable {
    public let texture_dims: [Int]
    public let clamped_view: [[Int]]
    public let regions: [String:Region]
    public let id: Int
}
