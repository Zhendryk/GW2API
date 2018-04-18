//
//  Transaction.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/18/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public struct Transaction: Decodable {
    let id: Int
    let item_id: Int
    let price: Int
    let quantity: Int
    let created: String
    let purchased: String
}
