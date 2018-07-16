//
//  GameMechanicsTests.swift
//  GW2APITests
//
//  Created by Zhendryk on 7/6/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

import XCTest
@testable import GW2API

class GameMechanicsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGMMasteries() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.masteries.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM MASTERIES: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMMasteriesID() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.masteries.get(id: 3) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM MASTERIES ID: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMMasteriesIDS() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.masteries.get(ids: [3, 4, 5]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM MASTERIES IDS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMOutfits() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.outfits.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM OUTFITS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMOutfitsID() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.outfits.get(id: 44) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM OUTFITS ID: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMOutfitsIDS() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.outfits.get(ids: [43, 44, 45]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM OUTFITS IDS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMPets() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.pets.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM PETS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMPetsID() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.pets.get(id: 36) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM PETS ID: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMPetsIDS() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.pets.get(ids: [37, 38, 39]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM PETS IDS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMProfessions() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.professions.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM PROFESSIONS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMProfessionsID() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.professions.get(id: "Necromancer") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM PROFESSIONS ID: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMProfessionsIDS() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.professions.get(ids: ["Warrior", "Engineer", "Elementalist"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM PROFESSIONS IDS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMRaces() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.races.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM RACES: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMRacesID() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.races.get(id: "Asura") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM RACES ID: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMRacesIDS() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.races.get(ids: ["Human", "Norn", "Asura"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM RACES IDS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMSpecializations() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.specializations.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM SPECIALIZATIONS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMSpecializationsID() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.specializations.get(id: 1) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM SPECIALIZATIONS ID: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMSpecializationsIDS() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.specializations.get(ids: [1, 2, 3]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM SPECIALIZATIONS IDS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMSkills() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.skills.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM SKILLS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMSkillsID() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.skills.get(id: 1110) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM SKILLS ID: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMSkillsIDS() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.skills.get(ids: [1110, 1115, 1118]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM SKILLS IDS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMTraits() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.traits.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM TRAITS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMTraitsID() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.traits.get(id: 214) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM TRAITS ID: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMTraitsIDS() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.traits.get(ids: [214, 221, 222]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM TRAITS IDS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMLegends() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.legends.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM LEGENDS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMLegendsID() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.legends.get(id: "Legend1") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM LEGENDS ID: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGMLegendsIDS() {
        let expectation = self.expectation(description: "Querying GW2API/GM...")
        GW2Client.instance.gameMechanics.legends.get(ids: ["Legend1", "Legend2", "Legend3"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGM LEGENDS IDS: ")
                print(error)
                print("\n\n\n")
            }
        }
        self.waitForExpectations(timeout: 5, handler: nil)
    }
}
