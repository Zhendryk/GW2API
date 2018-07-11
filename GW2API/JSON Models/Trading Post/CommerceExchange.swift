//
//  CommerceExchange.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/24/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//either commerce/exchange/coins or commerce/exchange/gems
//quantity
struct CommerceExchange: Decodable {
    let coins_per_gem: Int
    let quantity: Int
}
