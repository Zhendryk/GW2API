//
//  CommercePrice.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/24/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//commerce/prices
//id, ids
public struct CommercePrice: Decodable {
    public let id: Int
    public let whitelisted: Bool
    public let buys: CommercePriceTransaction
    public let sells: CommercePriceTransaction
}

public struct CommercePriceTransaction: Decodable {
    public let unit_price: Int
    public let quantity: Int
}
