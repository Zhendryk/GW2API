//
//  CommerceListing.swift
//  GW2API
//
//  Created by Zhendryk on 3/24/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//commerce/listings
//id, ids
public struct CommerceListing: Decodable {
    let id: Int
    let buys: [CommerceTransaction]
    let sells: [CommerceTransaction]
}

public struct CommerceTransaction: Decodable {
    let listings: Int
    let unit_price: Int
    let quantity: Int
}
