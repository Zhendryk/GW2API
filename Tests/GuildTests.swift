//
//  GuildTests.swift
//  GW2APITests
//
//  Created by Jonathan Bailey on 7/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import XCTest
@testable import GW2API

class GuildTests: XCTestCase {

    func getTestData(for language: GW2ClientLanguage = .english) -> (String, GW2ClientLanguage) {
        guard let pathString = Bundle(for: type(of: self)).path(forResource: "test_data", ofType: "json") else { fatalError("test_data.json not found") }
        guard let jsonString = try? String(contentsOfFile: pathString, encoding: .utf8) else { fatalError("Unable to convert test_data.json to String") }
        guard let jsonData = jsonString.data(using: .utf8) else { fatalError("Unable to convert test_data.json to Data") }
        guard let jsonDictionary = try? JSONSerialization.jsonObject(with: jsonData, options: []) as? [String:String] else { fatalError("Unable to convert test_data.json to JSON dictionary") }
        guard let testGuildID = jsonDictionary["GUILD_ID"] else { fatalError("GUILD_ID field not present in test_data.json") }
        return (testGuildID, language)
    }

    override func setUp() {
        super.setUp()
        let (testGuildID, testLanguage) = getTestData()
        GW2Client.instance.setGuildID(id: testGuildID)
        GW2Client.instance.setLanguage(lang: testLanguage)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGuildID() {
        let expectation = self.expectation(description: "Querying GW2API/guild...")
        GW2Client.instance.guild.id.get(id: GW2Client.instance.currentGuildID()) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\nGUILD ID ERROR: \(error)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGuildSearch() {
        let expectation = self.expectation(description: "Querying GW2API/guild...")
        GW2Client.instance.guild.search(guildName: "Api Test Guild") { result in
            switch result {
            case .success(let id):
                print(id)
                expectation.fulfill()
            case .failure(let error):
                print("\nGUILD SEARCH ERROR: \(error)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGuildEmblemForegrounds1() {
        let expectation = self.expectation(description: "Querying GW2API/guild...")
        GW2Client.instance.guild.emblem.foregrounds.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\nGUILD FOREGROUNDS 1 ERROR: \(error)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGuildForegrounds2() {
        let expectation = self.expectation(description: "Querying GW2API/guild...")
        GW2Client.instance.guild.emblem.foregrounds.get(id: 4) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\nGUILD FOREGROUNDS 2 ERROR: \(error)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGuildForegrounds3() {
        let expectation = self.expectation(description: "Querying GW2API/guild...")
        GW2Client.instance.guild.emblem.foregrounds.get(ids: [5, 6, 7]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\nGUILD FOREGROUNDS 3 ERROR: \(error)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGuildBackgrounds1() {
        let expectation = self.expectation(description: "Querying GW2API/guild...")
        GW2Client.instance.guild.emblem.backgrounds.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\nGUILD BACKGROUNDS 1 ERROR: \(error)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGuildBackgrounds2() {
        let expectation = self.expectation(description: "Querying GW2API/guild...")
        GW2Client.instance.guild.emblem.backgrounds.get(id: 2) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\nGUILD ID ERROR: \(error)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGuildBackgrounds3() {
        let expectation = self.expectation(description: "Querying GW2API/guild...")
        GW2Client.instance.guild.emblem.backgrounds.get(ids: [5, 6, 7]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\nGUILD BACKGROUNDS 3 ERROR: \(error)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGuildPermissions1() {
        let expectation = self.expectation(description: "Querying GW2API/guild...")
        GW2Client.instance.guild.permissions.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\nGUILD PERMISSIONS 1 ERROR: \(error)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGuildPermissions2() {
        let expectation = self.expectation(description: "Querying GW2API/guild...")
        GW2Client.instance.guild.permissions.get(id: "Admin") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\nGUILD PERMISSIONS 2 ERROR: \(error)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGuildPermissions3() {
        let expectation = self.expectation(description: "Querying GW2API/guild...")
        GW2Client.instance.guild.permissions.get(ids: ["Admin", "EditBGM", "EditRoles"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\nGUILD PERMISSIONS 3 ERROR: \(error)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGuildUpgrades1() {
        let expectation = self.expectation(description: "Querying GW2API/guild...")
        GW2Client.instance.guild.upgrades.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\nGUILD UPGRADES 1 ERROR: \(error)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGuildUpgrades2() {
        let expectation = self.expectation(description: "Querying GW2API/guild...")
        GW2Client.instance.guild.upgrades.get(id: 38) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\nGUILD UPGRADES 2 ERROR: \(error)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGuildUpgrades3() {
        let expectation = self.expectation(description: "Querying GW2API/guild...")
        GW2Client.instance.guild.upgrades.get(ids: [38, 43, 44, 51]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\nGUILD UPGRADES 3 ERROR: \(error)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
}
