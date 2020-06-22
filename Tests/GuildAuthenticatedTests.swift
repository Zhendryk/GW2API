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

    func getTestData(for language: GW2ClientLanguage = .english) -> (String, String, GW2ClientLanguage) {
        guard let pathString = Bundle(for: type(of: self)).path(forResource: "test_data", ofType: "json") else { fatalError("test_data.json not found") }
        guard let jsonString = try? String(contentsOfFile: pathString, encoding: .utf8) else { fatalError("Unable to convert test_data.json to String") }
        guard let jsonData = jsonString.data(using: .utf8) else { fatalError("Unable to convert test_data.json to Data") }
        guard let jsonDictionary = try? JSONSerialization.jsonObject(with: jsonData, options: []) as? [String:String] else { fatalError("Unable to convert test_data.json to JSON dictionary") }
        guard let testAPIKey = jsonDictionary["API_KEY"] else { fatalError("API_KEY field not present in test_data.json") }
        guard let testGuildID = jsonDictionary["GUILD_ID"] else { fatalError("GUILD_ID field not present in test_data.json") }
        return (testAPIKey, testGuildID, language)
    }

    override func setUp() {
        super.setUp()
        let (testAPIKey, testGuildID, lang) = getTestData()
        GW2Client.instance.setAPIKey(key: testAPIKey)
        GW2Client.instance.setGuildID(id: testGuildID)
        GW2Client.instance.setLanguage(lang: lang)
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
