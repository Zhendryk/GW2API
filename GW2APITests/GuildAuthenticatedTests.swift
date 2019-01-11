//
//  GuildAuthenticatedTests.swift
//  GW2APITests
//
//  Created by Zhendryk on 7/8/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

import XCTest
@testable import GW2API
class GuildAuthenticatedTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        GW2Client.instance.setAPIKey(key: testingAPIKey)
        GW2Client.instance.setGuildID(id: testingGuildID)
        GW2Client.instance.setLanguage(lang: testingLanguage)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLog() {
        let expectation = self.expectation(description: "Querying GW2Client/authenticatedGuild...")
        GW2Client.instance.guild.authenticated.log.get(since: nil) { result in
            switch result {
            case .success(_):
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
