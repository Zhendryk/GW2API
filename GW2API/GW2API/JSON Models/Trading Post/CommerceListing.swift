//
//  CommerceListing.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/24/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct CommerceListing: Decodable {
    let id: Int
    let buys: [buy]
    let sells: [sell]
}

struct buy: Decodable {
    let listings: Int
    let unit_price: Int
    let quantity: Int
}

struct sell: Decodable {
    let listings: Int
    let unit_price: Int
    let quantity: Int
}
