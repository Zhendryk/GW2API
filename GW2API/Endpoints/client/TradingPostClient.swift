//
//  TradingPostClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/13/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

/// The trading post endpoint client: api.guildwars2.com/v2/commerce
class TradingPostClient : Client {
    
    /// The listings endpoint: information about trading post listings
    let listings: ListingsClient = ListingsClient()
    
    /// The exchange endpoint: information about conversion rates from coins to gems and vice versa
    let exchange: ExchangeClient = ExchangeClient()
    
    /// The prices endpoint: information about buy and sell listings
    let prices: PricesClient = PricesClient()
    
    /// Sets the language for every sub endpoint
    ///
    /// - Parameter language: The language to set
    override func setLanguage(_ language: String) {
        self.listings.setLanguage(language)
        self.exchange.setLanguage(language)
        self.prices.setLanguage(language)
    }
    
    /// The listings endpoint client: api.guildwars2.com/v2/commerce/listings
    class ListingsClient : Client {
        
        /// Returns a list of all commerce listing ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: ETradingPost.commerceListings.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the commerce listing corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the commerce listing you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<CommerceListing?, APIError>)
        func get(id: Int, completion: @escaping (Result<CommerceListing?, APIError>) -> Void) {
            fetchAsync(with: ETradingPost.commerceListings.idRequest(id: String(id)), decode: { json -> CommerceListing? in
                guard let res = json as? CommerceListing else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more commerce listings corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the commerce listing(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[CommerceListing]?, APIError>)
        func get(ids: [Int], completion: @escaping (Result<[CommerceListing]?, APIError>) -> Void) {
            fetchAsync(with: ETradingPost.commerceListings.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [CommerceListing]? in
                guard let res = json as? [CommerceListing] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The exchange endpoint client: api.guildwars2.com/v2/...
    class ExchangeClient : Client {
        
        /// Returns the current conversion rate from coins to gems
        ///
        /// - Parameters:
        ///   - quantity: The number of coins you want to know the conversion rate to gems
        ///   - completion: Callback function to handle the data returned from the API (Result<CommerceExchange?, APIError>)
        func coinsToGems(quantity: Int, completion: @escaping (Result<CommerceExchange?, APIError>) -> Void) {
            fetchAsync(with: ETradingPost.commerceExchangeCoins.request, parameters: [URLQueryItem(name: "quantity", value: String(quantity))], decode: { json -> CommerceExchange? in
                guard let res = json as? CommerceExchange else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the current conversion rate from gems to coins
        ///
        /// - Parameters:
        ///   - quantity: The number of gems you want to know the conversion rate to coins
        ///   - completion: Callback function to handle the data returned from the API (Result<[CommerceExchange]?, APIError>)
        func gemsToCoins(quantity: Int, completion: @escaping (Result<CommerceExchange?, APIError>) -> Void) {
            fetchAsync(with: ETradingPost.commerceExchangeGems.request, parameters: [URLQueryItem(name: "quantity", value: String(quantity))], decode: { json -> CommerceExchange? in
                guard let res = json as? CommerceExchange else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The prices endpoint client: api.guildwars2.com/v2/commerce/prices
    class PricesClient : Client {
        
        /// Returns a list of all commerce pricing ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: ETradingPost.commercePrices.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the commerce price corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the commerce price you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<CommercePrice?, APIError>)
        func get(id: Int, completion: @escaping (Result<CommercePrice?, APIError>) -> Void) {
            fetchAsync(with: ETradingPost.commercePrices.idRequest(id: String(id)), decode: { json -> CommercePrice? in
                guard let res = json as? CommercePrice else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more commerce prices corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the commerce price(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[CommercePrice]?, APIError>)
        func get(ids: [Int], completion: @escaping (Result<[CommercePrice]?, APIError>) -> Void) {
            fetchAsync(with: ETradingPost.commercePrices.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [CommercePrice]? in
                guard let res = json as? [CommercePrice] else { return nil }
                return res
            }, completion: completion)
        }
    }
}
