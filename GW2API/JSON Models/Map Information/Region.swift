//
//  Region.swift
//  GW2API
//
//  Created by Zhendryk on 7/12/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct Region : Decodable {
    let name: String
    let label_coord: [Int]
    let continent_rect: [[Int]]
    let maps: [String:DetailedMap]
    let id: Int
}
