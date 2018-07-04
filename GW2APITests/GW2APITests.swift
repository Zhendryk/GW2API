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
    
    func testEndpoint() {
        let expectation = self.expectation(description: "Querying GW2API...")
        
        GW2Client.instance.authenticated.account.achievements.get() { result in
            switch result {
            case .success(let res):
                guard let r = res else { return }
                print("\n\n\n")
                print(r)
                print("\n\n\n")
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
    
    /*
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
 */
}
