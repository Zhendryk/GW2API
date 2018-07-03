//
//  AccountInventoryItem.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct AccountInventoryItem: Decodable {
    let id: Int
    let count: Int
    let binding: String?
}
