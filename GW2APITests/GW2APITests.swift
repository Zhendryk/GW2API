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
    
    func authAccount() {
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
    
    func authAchievements() {
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
    
    func authBank() {
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
    
    func authDungeons() {
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
    
    func authDyes() {
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
    
    func authFinishers() {
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
    
    func authCats() {
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
    
    func authNodes() {
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
    
    func authInventory() {
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
    
    func authMasteries() {
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
    
    func authMasteryPoints() {
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
    
    func authMaterials() {
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
    
    func authMinis() {
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
    
    func authOutfits() {
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
    
    func authRaids() {
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
    
    func authRecipes() {
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
    
    func authSkins() {
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
    
    func authTitles() {
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
    
    func authWallet() {
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
    
    func authCharacters() { //jsonconversionfailure
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
    
    func authCharactersSpecific() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/characters/zhendryk")
        GW2Client.instance.authenticated.account.characters.get(characterName: "Zhendryk"/*parameters: [qi]*/) { result in
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
    
    func authCurBuys() {
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
    
    func authCurSells() {
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
    
    func authHisBuys() {
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
    
    func authHisSells() {
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
    
    func authPVPGames() { //timeout
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
    
    func authPVPStats() {
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
    
    func authPVPStandings() { //timeout
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
    
    func authToken() {
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
    
    func testAuthenticated() {
        /*
        authAccount()
        authAchievements()
        authBank()
        authDungeons()
        authDyes()
        authFinishers()
        authCats()
        authNodes()
        authInventory()
        authMasteries()
        authMasteryPoints()
        authMaterials()
        authMinis()
        authOutfits()
        authRaids()
        authRecipes()
        authSkins()
        authTitles()
        authWallet()
        authCurBuys()
        authCurSells()
        authHisBuys()
        authHisSells()
        authPVPGames()
        authPVPStats()
        authPVPStandings()
        authToken()
        authCharacters()
         */
        authCharactersSpecific()
        
    }
    
    /*
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
 */
}
