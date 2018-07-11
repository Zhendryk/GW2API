//
//  CommerceListing.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/24/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//commerce/listings
//id, ids
struct CommerceListing: Decodable {
    let id: Int
    let buys: [CommerceTransaction]
    let sells: [CommerceTransaction]
}

struct CommerceTransaction: Decodable {
    let listings: Int
    let unit_price: Int
    let quantity: Int
}
