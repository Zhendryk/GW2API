//
//  GMOutfit.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct GMOutfit: Decodable {
    let id: Int
    let name: String
    let icon: String
    let unlock_items: [Int]
}