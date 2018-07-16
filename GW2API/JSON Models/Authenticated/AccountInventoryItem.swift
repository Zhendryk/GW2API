//
//  AccountInventoryItem.swift
//  GW2API
//
//  Created by Zhendryk on 3/17/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct AccountInventoryItem: Decodable {
    let id: Int
    let count: Int
    let binding: String?
}
