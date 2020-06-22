//
//  TradingPostEP.swift
//  GW2API
//
//  Created by Zhendryk on 9/7/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

import GenericAPIClient

struct GetListingIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/commerce/listings" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetListing: APIRequest {
    typealias Response = CommerceListing
    
    var resource: String { return "/commerce/listings" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: Int? = nil) {
        self.id = id
    }
}

struct GetListings: APIRequest {
    typealias Response = [CommerceListing]
    
    var resource: String { return "/commerce/listings" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(ids: [Int]? = nil) {
        self.ids = ids
    }
}

struct GetPriceIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/commerce/prices" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetPrice: APIRequest {
    typealias Response = CommercePrice
    
    var resource: String { return "/commerce/prices" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: Int? = nil) {
        self.id = id
    }
}

struct GetPrices: APIRequest {
    typealias Response = [CommercePrice]
    
    var resource: String { return "/commerce/prices" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(ids: [Int]? = nil) {
        self.ids = ids
    }
}

struct GetDeliveries: APIRequest {
    typealias Response = CommerceDelivery
    
    var resource: String { return "/commerce/delivery" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var access_token: String?
    
    private enum CodingKeys: String, CodingKey {
        case access_token
    }
    
    init(access_token: String? = nil) {
        self.access_token = access_token
    }
}

struct GetCoinsToGems: APIRequest {
    typealias Response = CommerceExchange
    
    var resource: String { return "/commerce/exchange/coins" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var quantity: Int?
    
    private enum CodingKeys: String, CodingKey {
        case quantity
    }
    
    init(quantity: Int? = nil) {
        self.quantity = quantity
    }
}

struct GetGemsToCoins: APIRequest {
    typealias Response = CommerceExchange
    
    var resource: String { return "/commerce/exchange/gems" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var quantity: Int?
    
    private enum CodingKeys: String, CodingKey {
        case quantity
    }
    
    init(quantity: Int? = nil) {
        self.quantity = quantity
    }
}
