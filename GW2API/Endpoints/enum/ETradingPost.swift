//
//  ETradingPost.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/13/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

enum ETradingPost {
    case commerceListings
    case commerceExchangeCoins
    case commerceExchangeGems
    case commercePrices
}

extension ETradingPost : Endpoint {
    var path: String {
        switch self {
        case .commerceListings: return "commerce/listings"
        case .commerceExchangeCoins: return "commerce/exchange/coins"
        case .commerceExchangeGems: return "commerce/exchange/gems"
        case .commercePrices: return "commerce/prices"
        }
    }
}
