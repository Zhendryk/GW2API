//
//  WVWTests.swift
//  GW2APITests
//
//  Created by Jonathan Bailey on 7/15/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import XCTest
@testable import GW2API
class WVWTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        GW2Client.instance.setLanguage(lang: testingLanguage)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testWVWAbilitiesIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.abilities.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWAbilitiesID() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.abilities.get(id: 2) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWAbilitiesIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.abilities.get(ids: [3, 4, 5]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchesIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchesID() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.get(id: "2-1") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchesIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.get(ids: ["2-2", "2-3"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchOverviewIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.overview.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchOverviewID() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.overview.get(id: "2-1") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchOverviewIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.overview.get(ids: ["2-2", "2-3"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchOverviewWorld() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.overview.get(worldID: 1008) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchScoresIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.scores.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchScoresID() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.scores.get(id: "2-1") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchScoresIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.scores.get(ids: ["2-2", "2-3"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchScoresWorld() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.scores.get(worldID: 1008) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchStatsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.stats.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchStatsID() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.stats.get(id: "2-1") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchStatsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.stats.get(ids: ["2-2", "2-3"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWMatchStatsWorld() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.matches.stats.get(worldID: 1008) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWObjectivesIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.objectives.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWObjectivesID() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.objectives.get(id: "96-62") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWObjectivesIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.objectives.get(ids: ["94-62", "95-62"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWRanksIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.ranks.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWRanksID() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.ranks.get(id: 1) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWRanksIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.ranks.get(ids: [2, 3, 4]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWUpgradesIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.upgrades.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWUpgradesID() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.upgrades.get(id: 5) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWVWUpgradesIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/wvw...")
        GW2Client.instance.wvw.upgrades.get(ids: [5, 6, 7]) { result in
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
