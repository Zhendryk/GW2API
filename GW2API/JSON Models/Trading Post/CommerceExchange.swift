//
//  CommerceExchange.swift
//  GW2API
//
//  Created by Zhendryk on 3/24/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//either commerce/exchange/coins or commerce/exchange/gems
//quantity
public struct CommerceExchange: Decodable {
    public let coins_per_gem: Int
    public let quantity: Int
}
