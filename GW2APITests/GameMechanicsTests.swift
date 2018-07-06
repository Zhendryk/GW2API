//
//  GameMechanicsTests.swift
//  GW2APITests
//
//  Created by Jonathan Bailey on 7/6/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import XCTest
@testable import GW2API

class GameMechanicsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        //GW2Client.instance.setAPIKey(key: "4AF24083-8D27-2140-BB05-819E907771A35C4ACBD4-3310-42B6-B626-7FE72DEFF85E")
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
                print("\nGM MASTERIES SUCCESS\n")
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
        let qi = URLQueryItem(name: "id", value: "3")
        GW2Client.instance.gameMechanics.masteries.get(id: qi) { result in
            switch result {
            case .success(_):
                print("\nGM MASTERIES ID SUCCESS\n")
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
        let qi = URLQueryItem(name: "ids", value: "3, 4, 5")
        GW2Client.instance.gameMechanics.masteries.get(ids: qi) { result in
            switch result {
            case .success(_):
                print("\nGM MASTERIES IDS SUCCESS\n")
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
                print("\nGM OUTFITS SUCCESS\n")
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
        let qi = URLQueryItem(name: "id", value: "44")
        GW2Client.instance.gameMechanics.outfits.get(id: qi) { result in
            switch result {
            case .success(_):
                print("\nGM OUTFITS ID SUCCESS\n")
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
        let qi = URLQueryItem(name: "ids", value: "43, 44, 45")
        GW2Client.instance.gameMechanics.outfits.get(ids: qi) { result in
            switch result {
            case .success(_):
                print("\nGM OUTFITS IDS SUCCESS\n")
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
                print("\nGM PETS SUCCESS\n")
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
        let qi = URLQueryItem(name: "id", value: "36")
        GW2Client.instance.gameMechanics.pets.get(id: qi) { result in
            switch result {
            case .success(_):
                print("\nGM PETS ID SUCCESS\n")
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
        let qi = URLQueryItem(name: "ids", value: "37, 38, 39")
        GW2Client.instance.gameMechanics.pets.get(ids: qi) { result in
            switch result {
            case .success(_):
                print("\nGM PETS IDS SUCCESS\n")
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
                print("\nGM PROFESSIONS SUCCESS\n")
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
        let qi = URLQueryItem(name: "id", value: "Necromancer")
        GW2Client.instance.gameMechanics.professions.get(id: qi) { result in
            switch result {
            case .success(_):
                print("\nGM PROFESSIONS ID SUCCESS\n")
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
        let qi = URLQueryItem(name: "ids", value: "Warrior, Engineer, Elementalist")
        GW2Client.instance.gameMechanics.professions.get(ids: qi) { result in
            switch result {
            case .success(_):
                print("\nGM PROFESSIONS IDS SUCCESS\n")
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
                print("\nGM RACES SUCCESS\n")
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
        let qi = URLQueryItem(name: "id", value: "Asura")
        GW2Client.instance.gameMechanics.races.get(id: qi) { result in
            switch result {
            case .success(_):
                print("\nGM RACES ID SUCCESS\n")
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
        let qi = URLQueryItem(name: "ids", value: "Human, Norn, Asura")
        GW2Client.instance.gameMechanics.races.get(ids: qi) { result in
            switch result {
            case .success(_):
                print("\nGM RACES IDS SUCCESS\n")
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
                print("\nGM SPECIALIZATIONS SUCCESS\n")
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
        let qi = URLQueryItem(name: "id", value: "1")
        GW2Client.instance.gameMechanics.specializations.get(id: qi) { result in
            switch result {
            case .success(_):
                print("\nGM SPECIALIZATIONS ID SUCCESS\n")
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
        let qi = URLQueryItem(name: "ids", value: "1, 2, 3")
        GW2Client.instance.gameMechanics.specializations.get(ids: qi) { result in
            switch result {
            case .success(_):
                print("\nGM SPECIALIZATIONS IDS SUCCESS\n")
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
                print("\nGM SKILLS SUCCESS\n")
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
        let qi = URLQueryItem(name: "id", value: "1110")
        GW2Client.instance.gameMechanics.skills.get(id: qi) { result in
            switch result {
            case .success(_):
                print("\nGM SKILLS ID SUCCESS\n")
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
        let qi = URLQueryItem(name: "ids", value: "1110, 1115, 1118")
        GW2Client.instance.gameMechanics.skills.get(ids: qi) { result in
            switch result {
            case .success(_):
                print("\nGM SKILLS IDS SUCCESS\n")
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
                print("\nGM TRAITS SUCCESS\n")
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
        let qi = URLQueryItem(name: "id", value: "214")
        GW2Client.instance.gameMechanics.traits.get(id: qi) { result in
            switch result {
            case .success(_):
                print("\nGM TRAITS ID SUCCESS\n")
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
        let qi = URLQueryItem(name: "ids", value: "214, 221, 222")
        GW2Client.instance.gameMechanics.traits.get(ids: qi) { result in
            switch result {
            case .success(_):
                print("\nGM TRAITS IDS SUCCESS\n")
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
                print("\nGM LEGENDS SUCCESS\n")
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
        let qi = URLQueryItem(name: "id", value: "Legend1")
        GW2Client.instance.gameMechanics.legends.get(id: qi) { result in
            switch result {
            case .success(_):
                print("\nGM LEGENDS ID SUCCESS\n")
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
        let qi = URLQueryItem(name: "ids", value: "Legend1, Legend2, Legend3")
        GW2Client.instance.gameMechanics.legends.get(ids: qi) { result in
            switch result {
            case .success(_):
                print("\nGM LEGENDS IDS SUCCESS\n")
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
