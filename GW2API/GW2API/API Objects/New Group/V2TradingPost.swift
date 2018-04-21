//
//  V2TradingPost.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class V2TradingPost {
    let listings = V2CommerceListings(type: "commerce/listings")
    let exchange = V2CommerceExchange()
    let prices = V2CommercePrices(type: "commerce/prices")
    let transactions = V2CommerceTransactions()
    
    class V2CommerceListings: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs:[String:String]) -> [CommerceListing]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: CommerceListing = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [CommerceListing] = try super.getKWArr(kwargs: kwargs) {
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
    
    class V2CommerceExchange {
        
        let coins = V2CommerceExchangeCoins(type: "commerce/exchange/coins")
        let gems = V2CommerceExchangeGems(type: "commerce/exchange/gems")
        
        class V2CommerceExchangeCoins: APIV2Object {
            func get() -> CommerceExchange? {
                do {
                    let json: CommerceExchange? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2CommerceExchangeGems: APIV2Object {
            func get() -> CommerceExchange? {
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
    
    class V2CommercePrices: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs:[String:String]) -> [CommercePrices]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: CommercePrices = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [CommercePrices] = try super.getKWArr(kwargs: kwargs) {
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
    
    class V2CommerceTransactions {
        
        let current = V2CommerceTransactionCurrent()
        let history = V2CommerceTransactionHistory()
        
        class V2CommerceTransactionCurrent {
            let buys = V2CommTransCurrBuys(type: "commerce/transactions/current/buys")
            let sells = V2CommTransCurrSells(type: "commerce/transactions/current/sells")
            
            class V2CommTransCurrBuys: APIV2Object {
                func get() -> [Transaction]? {
                    do {
                        let json: [Transaction]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
            
            class V2CommTransCurrSells: APIV2Object {
                func get() -> [Transaction]? {
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
        
        class V2CommerceTransactionHistory {
            let buys = V2CommTransHistBuys(type: "commerce/transactions/history/buys")
            let sells = V2CommTransHistSells(type: "commerce/transactions/history/sells")
            
            class V2CommTransHistBuys: APIV2Object {
                func get() -> [Transaction]? {
                    do {
                        let json: [Transaction]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
            
            class V2CommTransHistSells: APIV2Object {
                func get() -> [Transaction]? {
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
