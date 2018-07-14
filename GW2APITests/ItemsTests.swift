//
//  ItemsTests.swift
//  GW2APITests
//
//  Created by Jonathan Bailey on 7/14/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import XCTest
@testable import GW2API
class ItemsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFinishersIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.finishers.get() { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testFinishersID() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.finishers.get(id: 1) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testFinishersIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.finishers.get(ids: [1, 2, 3]) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testFinishersPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.finishers.get(page: 0, page_size: 5) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testItemstatsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.itemstats.get() { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testItemstatsID() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.itemstats.get(id: 112) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testItemstatsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.itemstats.get(ids: [112, 137, 138, 139]) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testItemstatsIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.itemstats.get(page: 0, page_size: 4) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMaterialsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.materials.get() { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMaterialsID() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.materials.get() { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMaterialsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.materials.get() { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMaterialsIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.materials.get() { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    //pvpamulets, recipes, skins, items
    
    
}
