//
//  CommerceListing.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/24/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//commerce/listings
//id, ids
public struct CommerceListing: Decodable {
    public let id: Int
    public let buys: [CommerceTransaction]
    public let sells: [CommerceTransaction]
}

public struct CommerceTransaction: Decodable {
    public let listings: Int
    public let unit_price: Int
    public let quantity: Int
}
