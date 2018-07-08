//
//  GW2APITests.swift
//  GW2APITests
//
//  Created by Jonathan Bailey on 6/30/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import XCTest
@testable import GW2API

class AuthenticatedTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        GW2Client.instance.setAPIKey(key: "4AF24083-8D27-2140-BB05-819E907771A35C4ACBD4-3310-42B6-B626-7FE72DEFF85E")
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAuthAccount() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/account")
        GW2Client.instance.authenticated.account.get() { result in
            switch result {
            case .success(_):
                print("\nACCOUNT SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nACCOUNT: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthAchievements() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/account/achievements")
        GW2Client.instance.authenticated.account.achievements.get() { result in
            switch result {
            case .success(_):
                print("\nACCOUNT ACHIEVEMENTS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nACCOUNT ACHIEVEMENTS: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthBank() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/bank")
        GW2Client.instance.authenticated.account.bank.get() { result in
            switch result {
            case .success(_):
                print("\nBANK SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nBANK: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthDungeons() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/dungeons")
        GW2Client.instance.authenticated.account.dungeons.get() { result in
            switch result {
            case .success(_):
                print("\nDUNGEONS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nDUNGEONS: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthDyes() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/dyes")
        GW2Client.instance.authenticated.account.dyes.get() { result in
            switch result {
            case .success(_):
                print("\nDYES SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nDYES: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthFinishers() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/finishers")
        GW2Client.instance.authenticated.account.finishers.get() { result in
            switch result {
            case .success(_):
                print("\nFINISHERS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nFINISHERS: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthCats() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/home/cats")
        GW2Client.instance.authenticated.account.home.cats.get() { result in
            switch result {
            case .success(_):
                print("\nCATS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nCATS: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthNodes() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/home/nodes")
        GW2Client.instance.authenticated.account.home.nodes.get() { result in
            switch result {
            case .success(_):
                print("\nNODES SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nNODES: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthInventory() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/inventory")
        GW2Client.instance.authenticated.account.inventory.get() { result in
            switch result {
            case .success(_):
                print("\nINVENTORY SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nINVENTORY: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthMasteries() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/masteries")
        GW2Client.instance.authenticated.account.masteries.get() { result in
            switch result {
            case .success(_):
                print("\nMASTERIES SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nMASTERIES: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthMasteryPoints() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/masteries/points")
        GW2Client.instance.authenticated.account.masteries.points.get() { result in
            switch result {
            case .success(_):
                print("\nMASTERY POINTS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nMASTERY POINTS: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthMaterials() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/materials")
        GW2Client.instance.authenticated.account.materials.get() { result in
            switch result {
            case .success(_):
                print("\nMATERIALS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nMATERIALS: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthMinis() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/minis")
        GW2Client.instance.authenticated.account.minis.get() { result in
            switch result {
            case .success(_):
                print("\nMINIS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nMINIS: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthOutfits() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/outfits")
        GW2Client.instance.authenticated.account.outfits.get() { result in
            switch result {
            case .success(_):
                print("\nOUTFITS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nOUTFITS: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthRaids() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/raids")
        
        GW2Client.instance.authenticated.account.raids.get() { result in
            switch result {
            case .success(_):
                print("\nRAIDS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nRAIDS: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthRecipes() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/recipes")
        GW2Client.instance.authenticated.account.recipes.get() { result in
            switch result {
            case .success(_):
                print("\nRECIPES SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nRECIPES: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthSkins() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/skins")
        GW2Client.instance.authenticated.account.skins.get() { result in
            switch result {
            case .success(_):
                print("\nSKINS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nSKINS: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthTitles() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/titles")
        GW2Client.instance.authenticated.account.titles.get() { result in
            switch result {
            case .success(_):
                print("\nTITLES SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nTITLES: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthWallet() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/wallet")
        
        GW2Client.instance.authenticated.account.wallet.get() { result in
            switch result {
            case .success(_):
                print("\nWALLET SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nWALLET: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthCharacters() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/characters")
        
        GW2Client.instance.authenticated.account.characters.get() { result in
            switch result {
            case .success(_):
                print("\nCHARACTERS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nCHARACTERS: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthCharactersSpecific() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/characters/zhendryk")
        GW2Client.instance.authenticated.account.characters.get(characterName: "Forster Varre") { result in
            switch result {
            case .success(_):
                print("\nCHARACTERS SPECIFIC SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nCHARACTERS SPECIFIC: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 10, handler: nil)
    }
    
    func testAuthCurBuys() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/transactions/current/buys")
        GW2Client.instance.authenticated.account.transactions.current.buys.get() { result in
            switch result {
            case .success(_):
                print("\nCURRENT BUYS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nCURRENT BUYS: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthCurSells() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/transactions/current/sells")
        GW2Client.instance.authenticated.account.transactions.current.sells.get() { result in
            switch result {
            case .success(_):
                print("\nCURRENT SELLS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nCURRENT SELLS: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthHisBuys() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/transactions/history/buys")
        GW2Client.instance.authenticated.account.transactions.history.buys.get() { result in
            switch result {
            case .success(_):
                print("\nHISTORY BUYS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nHISTORY BUYS: ")
                print(error)
                print("\n\n\n")
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthHisSells() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/transactions/history/sells")
        
        GW2Client.instance.authenticated.account.transactions.history.sells.get() { result in
            switch result {
            case .success(_):
                print("\nHISTORY SELLS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nHISTORY SELLS: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthPVPGames() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/pvp/games")
        GW2Client.instance.authenticated.account.pvp.games.get() { result in
            switch result {
            case .success(_):
                print("\nPVP GAMES SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nPVP GAMES: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPGames2() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/pvp/games")
        GW2Client.instance.authenticated.account.pvp.games.get(id: "067FDA8C-11B9-4E73-B18C-601FEA26A501") { result in
            switch result {
            case .success(_):
                print("\nPVP GAMES 2 SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nPVP 2 GAMES: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPVPGames3() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/pvp/games")
        GW2Client.instance.authenticated.account.pvp.games.get(ids: "0D7345FF-1E89-4206-9DB5-E9B6E1A526FE, 1DF4187C-AE0E-430D-A2BE-2FA6235DEC09, 4EC2983E-E244-4C00-8359-6B7981912DDA") { result in
            switch result {
            case .success(_):
                print("\nPVP GAMES 3 SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nPVP 3 GAMES: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthPVPStats() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/pvp/stats")
        GW2Client.instance.authenticated.account.pvp.stats.get() { result in
            switch result {
            case .success(_):
                print("\nPVP STATS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nPVP STATS: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthPVPStandings() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/pvp/standings")
        GW2Client.instance.authenticated.account.pvp.standings.get() { result in
            switch result {
            case .success(_):
                print("\nPVP STANDINGS SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nPVP STANDINGS: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAuthToken() {
        let expectation = self.expectation(description: "Querying gw2api/authenticated/tokeninfo")
        GW2Client.instance.authenticated.account.tokeninfo.get() { result in
            switch result {
            case .success(_):
                print("\nAUTH TOKEN SUCCESS\n")
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nAUTH TOKEN: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
     }
}
