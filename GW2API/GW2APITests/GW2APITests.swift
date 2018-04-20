//
//  GW2APITests.swift
//  GW2APITests
//
//  Created by Jonathan Bailey on 4/20/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import XCTest
@testable import GW2API

class GW2APITests: XCTestCase {
    let client = GW2Client(apiKey: "4AF24083-8D27-2140-BB05-819E907771A35C4ACBD4-3310-42B6-B626-7FE72DEFF85E")
    
    func testAchievementsEndpoint() {
        let base: [Int]? = client.achievements.get()
        let basekw: [Achievement]? = client.achievements.get(kwargs: ["ids":"1840,910,2258"])
        XCTAssertNotNil(base)
        XCTAssertNotNil(basekw)
        let daily: DailyAchievement? = client.achievements.daily.get()
        let dailyTM: DailyAchievement? = client.achievements.dailyTomorrow.get()
        XCTAssertNotNil(daily)
        XCTAssertNotNil(dailyTM)
        let groups: [String]? = client.achievements.groups.get()
        let groupskw: [AchievementGroup]? = client.achievements.groups.get(kwargs: ["ids":"A4ED8379-5B6B-4ECC-B6E1-70C350C902D2,56A82BB9-6B07-4AB0-89EE-E4A6D68F5C47,B42E2379-9599-46CA-9D4A-40A27E192BBE"])
        XCTAssertNotNil(groups)
        XCTAssertNotNil(groupskw)
        let categories = client.achievements.categories.get()
        let categorieskw = client.achievements.categories.get(kwargs: ["ids":"1,2,3"])
        XCTAssertNotNil(categories)
        XCTAssertNotNil(categorieskw)
    }
    
    func testAuthenticatedEndpoint() {
        let account: Account? = client.authenticated.account.get()
        XCTAssertNotNil(account)
        XCTAssertEqual(account!.name, "jbthejoker.9725", "Account name did not match or was nil")
    }
    
    func testGuildEndpoint() {
        
    }
}
