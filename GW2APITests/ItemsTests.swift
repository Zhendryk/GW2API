//
//  ItemsTests.swift
//  GW2APITests
//
//  Created by Zhendryk on 7/14/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
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
    
    func testPVPAmuletIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.pvpamulets.get() { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPAmuletID() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.pvpamulets.get(id: 1) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPAmuletIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.pvpamulets.get(ids: [1, 4, 5, 7]) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPAmuletIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.pvpamulets.get(page: 0, page_size: 6) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRecipesIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.recipes.get() { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRecipesID() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.recipes.get(id: 1) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRecipesIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.recipes.get(ids: [1, 2, 3]) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRecipesIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.recipes.get(page: 0, page_size: 5) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testSkinsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.skins.get() { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testSkinsID() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.skins.get(id: 1) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testSkinsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.skins.get(ids: [1, 2, 3]) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testSkinsIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.skins.get(page: 0, page_size: 4) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testItemsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.get() { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testItemsID() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.get(id: 24) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testItemsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.get(ids: [24, 68, 69]) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testItemsIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/items...")
        GW2Client.instance.items.get(page: 0, page_size: 10) { result in
            switch result {
            case.success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
}
