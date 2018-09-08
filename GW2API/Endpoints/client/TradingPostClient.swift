//
//  TradingPostClient.swift
//  GW2API
//
//  Created by Zhendryk on 7/13/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

import Swift_Generic_API_Client

/// The trading post endpoint client: api.guildwars2.com/v2/commerce
public class TradingPostClient : Client {
    
    /// The listings endpoint: information about trading post listings
    public let listings: ListingsClient = ListingsClient()
    
    /// The exchange endpoint: information about conversion rates from coins to gems and vice versa
    public let exchange: ExchangeClient = ExchangeClient()
    
    /// The prices endpoint: information about buy and sell listings
    public let prices: PricesClient = PricesClient()
    
    /// Sets the language for every sub endpoint
    ///
    /// - Parameter language: The language to set
    override func setLanguage(_ language: String) {
        self.listings.setLanguage(language)
        self.exchange.setLanguage(language)
        self.prices.setLanguage(language)
    }
    
    /// The listings endpoint client: api.guildwars2.com/v2/commerce/listings
    public class ListingsClient : Client {
        
        /// Returns a list of all commerce listing ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping RequestCallback<[Int]>) {
            _ = self.client.send(request: GetListingIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the commerce listing corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the commerce listing you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<CommerceListing?, APIError>)
        public func get(id: Int, completion: @escaping RequestCallback<CommerceListing>) {
            _ = self.client.send(request: GetListing(id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more commerce listings corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the commerce listing(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[CommerceListing]?, APIError>)
        public func get(ids: [Int], completion: @escaping RequestCallback<[CommerceListing]>) {
            _ = self.client.send(request: GetListings(ids: ids)) { result in
                completion(result)
            }
        }
    }
    
    /// The exchange endpoint client: api.guildwars2.com/v2/...
    public class ExchangeClient : Client {
        
        /// Returns the current conversion rate from coins to gems
        ///
        /// - Parameters:
        ///   - quantity: The number of coins you want to know the conversion rate to gems
        ///   - completion: Callback function to handle the data returned from the API (Result<CommerceExchange?, APIError>)
        public func coinsToGems(quantity: Int, completion: @escaping RequestCallback<CommerceExchange>) {
            _ = self.client.send(request: GetCoinsToGems(quantity: quantity)) { result in
                completion(result)
            }
        }
        
        /// Returns the current conversion rate from gems to coins
        ///
        /// - Parameters:
        ///   - quantity: The number of gems you want to know the conversion rate to coins
        ///   - completion: Callback function to handle the data returned from the API (Result<[CommerceExchange]?, APIError>)
        public func gemsToCoins(quantity: Int, completion: @escaping RequestCallback<CommerceExchange>) {
            _ = self.client.send(request: GetGemsToCoins(quantity: quantity)) { result in
                completion(result)
            }
        }
    }
    
    /// The prices endpoint client: api.guildwars2.com/v2/commerce/prices
    public class PricesClient : Client {
        
        /// Returns a list of all commerce pricing ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping RequestCallback<[Int]>) {
            _ = self.client.send(request: GetPriceIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the commerce price corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The id of the commerce price you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<CommercePrice?, APIError>)
        public func get(id: Int, completion: @escaping RequestCallback<CommercePrice>) {
            _ = self.client.send(request: GetPrice(id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more commerce prices corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: the id(s) of the commerce price(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[CommercePrice]?, APIError>)
        public func get(ids: [Int], completion: @escaping RequestCallback<[CommercePrice]>) {
            _ = self.client.send(request: GetPrices(ids: ids)) { result in
                completion(result)
            }
        }
    }
}
