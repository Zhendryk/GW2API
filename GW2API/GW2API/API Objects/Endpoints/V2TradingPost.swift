//
//  V2TradingPost.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class V2TradingPost {
    public let listings = V2CommerceListings(type: "commerce/listings")
    public let exchange = V2CommerceExchange()
    public let prices = V2CommercePrices(type: "commerce/prices")
    public let transactions = V2CommerceTransactions()
    
    public class V2CommerceListings: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        public func get(kwargs:[String:String]) -> [CommerceListing]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: CommerceListing = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [CommerceListing] = try super.getArrKW(kwargs: kwargs) {
                        return json
                    }
                    return nil
                }
                else {
                    return nil
                }
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2CommerceExchange {
        
        public let coins = V2CommerceExchangeCoins(type: "commerce/exchange/coins")
        public let gems = V2CommerceExchangeGems(type: "commerce/exchange/gems")
        
        public class V2CommerceExchangeCoins: APIV2Object {
            public func get() -> CommerceExchange? {
                do {
                    let json: CommerceExchange? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        public class V2CommerceExchangeGems: APIV2Object {
            public func get() -> CommerceExchange? {
                do {
                    let json: CommerceExchange? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
    }
    
    public class V2CommercePrices: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        public func get(kwargs:[String:String]) -> [CommercePrices]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: CommercePrices = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [CommercePrices] = try super.getArrKW(kwargs: kwargs) {
                        return json
                    }
                    return nil
                }
                else {
                    return nil
                }
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2CommerceTransactions {
        
        public let current = V2CommerceTransactionCurrent()
        public let history = V2CommerceTransactionHistory()
        
        public class V2CommerceTransactionCurrent {
            public let buys = V2CommTransCurrBuys(type: "commerce/transactions/current/buys")
            public let sells = V2CommTransCurrSells(type: "commerce/transactions/current/sells")
            
            public class V2CommTransCurrBuys: APIV2Object {
                public func get() -> [Transaction]? {
                    do {
                        let json: [Transaction]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
            
            public class V2CommTransCurrSells: APIV2Object {
                public func get() -> [Transaction]? {
                    do {
                        let json: [Transaction]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
        }
        
        public class V2CommerceTransactionHistory {
            public let buys = V2CommTransHistBuys(type: "commerce/transactions/history/buys")
            public let sells = V2CommTransHistSells(type: "commerce/transactions/history/sells")
            
            public class V2CommTransHistBuys: APIV2Object {
                public func get() -> [Transaction]? {
                    do {
                        let json: [Transaction]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
            
            public class V2CommTransHistSells: APIV2Object {
                public func get() -> [Transaction]? {
                    do {
                        let json: [Transaction]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
        }
    }
}
