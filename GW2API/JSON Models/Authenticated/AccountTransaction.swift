//
//  AccountTransaction.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct AccountTransaction: Decodable {
    let id: Int
    let item_id: Int
    let price: Int
    let quantity: Int
    let created: String
    let purchased: String
}
