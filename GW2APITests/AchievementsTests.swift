//
//  AchievementsTests.swift
//  GW2APITests
//
//  Created by Zhendryk on 7/6/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

import XCTest
@testable import GW2API

class AchievementsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAchievements() {
        let expectation = self.expectation(description: "Querying GW2API/achievements...")
        GW2Client.instance.achievements.get(){ result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nACHIEVEMENTS: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testDailyAchievements() {
        let expectation = self.expectation(description: "Querying GW2API/achievements...")
        GW2Client.instance.achievements.daily.get(){ result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nDAILY: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testDailyTomorrow() {
        let expectation = self.expectation(description: "Querying GW2API/achievements...")
        GW2Client.instance.achievements.dailyTomorrow.get(){ result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nDAILY TOMORROW: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAchievementCategories() {
        let expectation = self.expectation(description: "Querying GW2API/achievements...")
        GW2Client.instance.achievements.categories.get(){ result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nCATEGORIES: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAchievementCategoriesID() {
        let expectation = self.expectation(description: "Querying GW2API/achievements...")
        GW2Client.instance.achievements.categories.get(id: 59){ result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nCATEGORIES ID: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAchievementsCategoriesIDS() {
        let expectation = self.expectation(description: "Querying GW2API/achievements...")
        GW2Client.instance.achievements.categories.get(ids: [59, 61, 74]){ result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nCATEGORIES IDS: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAchievementGroups() {
        let expectation = self.expectation(description: "Querying GW2API/achievements...")
        GW2Client.instance.achievements.groups.get(){ result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGROUPS: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAchievementGroupsID() {
        let expectation = self.expectation(description: "Querying GW2API/achievements...")
        GW2Client.instance.achievements.groups.get(id: "A4ED8379-5B6B-4ECC-B6E1-70C350C902D2"){ result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGROUPS ID: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAchievementGroupsIDS() {
        let expectation = self.expectation(description: "Querying GW2API/achievements...")
        GW2Client.instance.achievements.groups.get(ids: ["A4ED8379-5B6B-4ECC-B6E1-70C350C902D2", "56A82BB9-6B07-4AB0-89EE-E4A6D68F5C47", "18DB115A-8637-4290-A636-821362A3C4A8"]){ result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\n\nGROUPS IDS: ")
                print(error)
                print("\n\n\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
}
