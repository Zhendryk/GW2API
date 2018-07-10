//
//  Finisher.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct Finisher : Decodable {
    let id: Int
    let unlock_details: String
    let unlock_items: [Int]?
    let order: Int
    let icon: String
    let name: String
}
