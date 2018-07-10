//
//  ItemStats.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct ItemStats : Decodable {
    let id: Int
    let name: String
    let attributes: [attribute]
    
    struct attribute : Decodable {
        let attribute: String
        let multiplier: Float
        let value: Int
    }
}
