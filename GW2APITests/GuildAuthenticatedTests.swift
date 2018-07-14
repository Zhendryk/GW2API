//
//  GuildAuthenticatedTests.swift
//  GW2APITests
//
//  Created by Jonathan Bailey on 7/8/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import XCTest
@testable import GW2API
class GuildAuthenticatedTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        GW2Client.instance.setAPIKey(key: "4AF24083-8D27-2140-BB05-819E907771A35C4ACBD4-3310-42B6-B626-7FE72DEFF85E")
        GW2Client.instance.guild.setGuildID("7EC05420-622A-E811-81A1-1217F5237040")
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLog() {
        let expectation = self.expectation(description: "Querying GW2Client/authenticatedGuild...")
        GW2Client.instance.guild.authenticated.log.get() { result in
            switch result {
            case .success(let data):
                guard let r = data else { return }
                print("\n\(r)\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    
    func testLogSince() {
        let expectation = self.expectation(description: "Querying GW2Client/authenticatedGuild...")
        GW2Client.instance.guild.authenticated.log.get(since: 969) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("/n\(error)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMembers() {
        let expectation = self.expectation(description: "Querying GW2Client/authenticatedGuild...")
        GW2Client.instance.guild.authenticated.members.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRanks() {
        let expectation = self.expectation(description: "Querying GW2Client/authenticatedGuild...")
        GW2Client.instance.guild.authenticated.ranks.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testStash() {
        let expectation = self.expectation(description: "Querying GW2Client/authenticatedGuild...")
        GW2Client.instance.guild.authenticated.stash.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTeams() {
        let expectation = self.expectation(description: "Querying GW2Client/authenticatedGuild...")
        GW2Client.instance.guild.authenticated.teams.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTreasury() {
        let expectation = self.expectation(description: "Querying GW2Client/authenticatedGuild...")
        GW2Client.instance.guild.authenticated.treasury.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testUpgrades() {
        let expectation = self.expectation(description: "Querying GW2Client/authenticatedGuild...")
        GW2Client.instance.guild.authenticated.upgrades.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
}
