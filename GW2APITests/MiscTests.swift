//
//  MiscTests.swift
//  GW2APITests
//
//  Created by Zhendryk on 7/15/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

import XCTest
@testable import GW2API
class MiscTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testBuild() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.build.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testColorsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.colors.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testColorsID() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.colors.get(id: 1) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testColorsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.colors.get(ids: [1, 2, 3, 4]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testColorsIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.colors.get(page: 0, page_size: 10) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCurrenciesIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.currencies.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCurrenciesID() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.currencies.get(id: 5) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCurrenciesIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.currencies.get(ids: [1, 9, 10]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCurrenciesIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.currencies.get(page: 0, page_size: 4) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testDungeonsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.dungeons.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testDungeonsID() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.dungeons.get(id: "ascalonian_catacombs") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testDungeonsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.dungeons.get(ids: ["ascalonian_catacombs", "caudecus_manor"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testDungeonsIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.dungeons.get(page: 0, page_size: 5) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testFilesIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.files.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testFilesID() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.files.get(id: "map_complete") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testFilesIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.files.get(ids: ["map_complete", "map_dungeon"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testFilesIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.files.get(page: 0, page_size: 6) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMinisIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.minis.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMinisID() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.minis.get(id: 1) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMinisIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.minis.get(ids: [1, 2, 3]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMinisIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.minis.get(page: 0, page_size: 10) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testQuaggansIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.quaggans.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testQuaggansID() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.quaggans.get(id: "404") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testQuaggansIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.quaggans.get(ids: ["404", "aloha", "attack"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testQuaggansIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.quaggans.get(page: 0, page_size: 10) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRaidsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.raids.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRaidsID() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.raids.get(id: "hall_of_chains") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRaidsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.raids.get(ids: ["forsaken_thicket", "hall_of_chains"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRaidsIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.raids.get(page: 0, page_size: 3) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTitlesIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.titles.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTitlesID() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.titles.get(id: 7) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTitlesIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.titles.get(ids: [1, 4, 8]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTitlesIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.titles.get(page: 0, page_size: 9) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWorldsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.worlds.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWorldsID() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.worlds.get(id: 1001) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWorldsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.worlds.get(ids: [1001, 1002, 1003, 1004]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWorldsIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/misc...")
        GW2Client.instance.misc.worlds.get(page: 0, page_size: 7) { result in
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
