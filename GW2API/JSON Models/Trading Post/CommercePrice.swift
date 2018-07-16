//
//  CommercePrice.swift
//  GW2API
//
//  Created by Zhendryk on 3/24/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//commerce/prices
//id, ids
public struct CommercePrice: Decodable {
    let id: Int
    let whitelisted: Bool
    let buys: CommercePriceTransaction
    let sells: CommercePriceTransaction
}

public struct CommercePriceTransaction: Decodable {
    let unit_price: Int
    let quantity: Int
}
