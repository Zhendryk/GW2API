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
    
    override func setUp() {
        super.setUp()
        GW2Client.instance.guild.setGuildID("116E0C0E-0035-44A9-BB22-4AE3E23127E5")
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    
}
