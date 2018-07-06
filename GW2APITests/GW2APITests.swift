//
//  GW2APITests.swift
//  GW2APITests
//
//  Created by Jonathan Bailey on 6/30/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import XCTest
@testable import GW2API

class GW2APITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        GW2Client.instance.setAPIKey(key: "4AF24083-8D27-2140-BB05-819E907771A35C4ACBD4-3310-42B6-B626-7FE72DEFF85E")
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAchievements() {
        let expectation = self.expectation(description: "Querying gw2api/achievements...")
        let qi = URLQueryItem(name: "ids", value: "A4ED8379-5B6B-4ECC-B6E1-70C350C902D2, 56A82BB9-6B07-4AB0-89EE-E4A6D68F5C47, B42E2379-9599-46CA-9D4A-40A27E192BBE")
        GW2Client.instance.achievements.groups.get(ids: qi) { result in
            switch result {
            case .success(let res):
                guard let res = res else { return }
                print("\nSUCCESS\n\(res)\n")
                expectation.fulfill()
            case .failure(let error):
                print("\nFAILURE:\n\(error)\n")
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    /*
    func testAuthAccount() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/account")
        GW2Client.instance.authenticated.account.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthAchievements() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/account/achievements")
        GW2Client.instance.authenticated.account.achievements.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthBank() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/bank")
        GW2Client.instance.authenticated.account.bank.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthDungeons() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/dungeons")
        GW2Client.instance.authenticated.account.dungeons.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthDyes() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/dyes")
        GW2Client.instance.authenticated.account.dyes.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthFinishers() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/finishers")
        GW2Client.instance.authenticated.account.finishers.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthCats() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/home/cats")
        GW2Client.instance.authenticated.account.home.cats.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthNodes() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/home/nodes")
        GW2Client.instance.authenticated.account.home.nodes.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthInventory() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/inventory")
        GW2Client.instance.authenticated.account.inventory.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthMasteries() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/masteries")
        GW2Client.instance.authenticated.account.masteries.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthMasteryPoints() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/masteries/points")
        GW2Client.instance.authenticated.account.masteries.points.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthMaterials() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/materials")
        GW2Client.instance.authenticated.account.materials.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthMinis() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/minis")
        GW2Client.instance.authenticated.account.minis.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthOutfits() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/outfits")
        GW2Client.instance.authenticated.account.outfits.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthRaids() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/raids")
        
        GW2Client.instance.authenticated.account.raids.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthRecipes() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/recipes")
        GW2Client.instance.authenticated.account.recipes.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthSkins() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/skins")
        GW2Client.instance.authenticated.account.skins.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthTitles() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/titles")
        GW2Client.instance.authenticated.account.titles.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthWallet() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/wallet")
        
        GW2Client.instance.authenticated.account.wallet.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthCharacters() { //jsonconversionfailure
        let expectation = self.expectation(description: "Querying gw2api/authenticated/characters")
        
        GW2Client.instance.authenticated.account.characters.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthCharactersSpecific() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/characters/zhendryk")
        GW2Client.instance.authenticated.account.characters.get(characterName: "Forster Varre"/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 10, handler: nil)
    }
    
    func testAuthCurBuys() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/transactions/current/buys")
        GW2Client.instance.authenticated.account.transactions.current.buys.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthCurSells() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/transactions/current/sells")
        GW2Client.instance.authenticated.account.transactions.current.sells.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthHisBuys() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/transactions/history/buys")
        GW2Client.instance.authenticated.account.transactions.history.buys.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthHisSells() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/transactions/history/sells")
        
        GW2Client.instance.authenticated.account.transactions.history.sells.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthPVPGames() { //timeout
        let expectation = self.expectation(description: "Querying gw2api/authenticated/pvp/games")
        GW2Client.instance.authenticated.account.pvp.games.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthPVPStats() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/pvp/stats")
        GW2Client.instance.authenticated.account.pvp.stats.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthPVPStandings() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/pvp/standings")
        GW2Client.instance.authenticated.account.pvp.standings.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthToken() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/tokeninfo")
        GW2Client.instance.authenticated.account.tokeninfo.get(/*parameters: [qi]*/) { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\nSUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\n")
                print(error)
                print("\n\n\n")
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    */
}
