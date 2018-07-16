//
//  PVPTests.swift
//  GW2APITests
//
//  Created by Zhendryk on 7/15/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

import XCTest
@testable import GW2API
class PVPTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPVPIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/pvp...")
        GW2Client.instance.pvp.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPRanksIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/pvp...")
        GW2Client.instance.pvp.ranks.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPRanksID() {
        let expectation = self.expectation(description: "Querying GW2Client/pvp...")
        GW2Client.instance.pvp.ranks.get(id: 3) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPRanksIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/pvp...")
        GW2Client.instance.pvp.ranks.get(ids: [4, 5]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPRanksIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/pvp...")
        GW2Client.instance.pvp.ranks.get(page: 0, page_size: 3) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPSeasonsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/pvp...")
        GW2Client.instance.pvp.seasons.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPSeasonsID() {
        let expectation = self.expectation(description: "Querying GW2Client/pvp...")
        GW2Client.instance.pvp.seasons.get(id: "44B85826-B5ED-4890-8C77-82DDF9F2CF2B") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPSeasonsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/pvp...")
        GW2Client.instance.pvp.seasons.get(ids: ["44B85826-B5ED-4890-8C77-82DDF9F2CF2B", "95D5B290-798A-421E-A919-1C2A75F74B72"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPSeasonsIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/pvp...")
        GW2Client.instance.pvp.seasons.get(page: 0, page_size: 4) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPSeasonsLeaderboardsLadder() {
        let expectation = self.expectation(description: "Querying GW2Client/pvp...")
        GW2Client.instance.pvp.seasons.leaderboards.getLadder(seasonID: "A54849B7-7DBD-4958-91EF-72E18CD659BA") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPSeasonsLeaderboardsLegendary() {
        let expectation = self.expectation(description: "Querying GW2Client/pvp...")
        GW2Client.instance.pvp.seasons.leaderboards.getLegendary(seasonID: "95D5B290-798A-421E-A919-1C2A75F74B72") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPSeasonsLeaderboardsGuild() {
        let expectation = self.expectation(description: "Querying GW2Client/pvp...")
        GW2Client.instance.pvp.seasons.leaderboards.getGuild(seasonID: "2B2E80D3-0A74-424F-B0EA-E221500B323C") { result in
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
