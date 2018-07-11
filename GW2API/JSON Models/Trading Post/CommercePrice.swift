//
//  CommercePrice.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/24/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//commerce/prices
//id, ids
struct CommercePrice: Decodable {
    let id: Int
    let whitelisted: Bool
    let buys: CommercePriceTransaction
    let sells: CommercePriceTransaction
}

struct CommercePriceTransaction: Decodable {
    let unit_price: Int
    let quantity: Int
}
