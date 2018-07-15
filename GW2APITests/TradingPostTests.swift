//
//  TradingPostTests.swift
//  GW2APITests
//
//  Created by Jonathan Bailey on 7/15/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import XCTest
@testable import GW2API
class TradingPostTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTPExchangeCoins2Gems() {
        let expectation = self.expectation(description: "Querying GW2Client/tradingpost...")
        GW2Client.instance.tradingPost.exchange.coinsToGems(quantity: 10000) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTPExchangeGems2Coins() {
        let expectation = self.expectation(description: "Querying GW2Client/tradingpost...")
        GW2Client.instance.tradingPost.exchange.gemsToCoins(quantity: 500) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTPListingsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/tradingpost...")
        GW2Client.instance.tradingPost.listings.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTPListingsID() {
        let expectation = self.expectation(description: "Querying GW2Client/tradingpost...")
        GW2Client.instance.tradingPost.listings.get(id: 24) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTPListingsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/tradingpost...")
        GW2Client.instance.tradingPost.listings.get(ids: [24, 68, 69]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTPPricesIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/tradingpost...")
        GW2Client.instance.tradingPost.prices.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTPPricesID() {
        let expectation = self.expectation(description: "Querying GW2Client/tradingpost...")
        GW2Client.instance.tradingPost.prices.get(id: 68) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTPPricesIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/tradingpost...")
        GW2Client.instance.tradingPost.prices.get(ids: [24, 68, 69]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
}
