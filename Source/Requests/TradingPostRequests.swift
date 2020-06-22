//
//  TradingPostEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import APIClient

class GetListingIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/commerce/listings")
    }
}

class GetListing: GetRequest<CommerceListing> {
    init(id: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        super.init(resource: "/commerce/listings", urlQueryParameters: urlQP)
    }
}

class GetListings: GetRequest<[CommerceListing]> {
    init(ids: [Int]? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        super.init(resource: "/commerce/listings", urlQueryParameters: urlQP)
    }
}

class GetPriceIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/commerce/prices")
    }
}

class GetPrice: GetRequest<CommercePrice> {
    init(id: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        super.init(resource: "/commerce/prices", urlQueryParameters: urlQP)
    }
}

class GetPrices: GetRequest<[CommercePrice]> {
    init(ids: [Int]? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        super.init(resource: "/commerce/prices", urlQueryParameters: urlQP)
    }
}

class GetDeliveries: GetRequest<CommerceDelivery> {
    init(access_token: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let access_token = access_token {
            urlQP.append(URLQueryItem(name: "access_token", value: HTTPParameter.string(access_token).description))
        }
        super.init(resource: "/commerce/delivery", urlQueryParameters: urlQP)
    }
}

class GetCoinsToGems: GetRequest<CommerceExchange> {
    init(quantity: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let quantity = quantity {
            urlQP.append(URLQueryItem(name: "quantity", value: HTTPParameter.int(quantity).description))
        }
        super.init(resource: "/commerce/exchange/coins", urlQueryParameters: urlQP)
    }
}

class GetGemsToCoins: GetRequest<CommerceExchange> {
    init(quantity: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let quantity = quantity {
            urlQP.append(URLQueryItem(name: "quantity", value: HTTPParameter.int(quantity).description))
        }
        super.init(resource: "/commerce/exchange/gems", urlQueryParameters: urlQP)
    }
}
