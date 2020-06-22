//
//  Region.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/12/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct Region : Decodable {
    public let name: String
    public let label_coord: [Int]
    public let continent_rect: [[Int]]
    public let maps: [String:DetailedMap]
    public let id: Int
}
