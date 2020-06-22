//
//  AccountInventoryItem.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct AccountInventoryItem: Decodable {
    public let id: Int
    public let count: Int
    public let binding: String?
}
