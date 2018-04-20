//
//  CommercePrices.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/24/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct CommercePrices: Decodable {
    let id: Int
    let whitelisted: Bool
    let buys: buys
    let sells: sells
}

struct buys: Decodable {
    let unit_price: Int
    let quantity: Int
}

struct sells: Decodable {
    let unit_price: Int
    let quantity: Int
}
