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
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        GW2Client.instance.authenticated.account.get(completion: { result in
            switch result {
            case .success(let res):
                guard let authres = res else { return }
                print("\n\n\n[*****RESULTS*****]\n")
                print(authres)
                print("\n\n\n")
            case .failure(let error):
                print("\n\n\n[*****ERROR*****]\n")
                print("Error: \(error)")
                print("\n\n\n")
            }
        })
        /*
        let qp = URLQueryItem(name: "id", value: "A4ED8379-5B6B-4ECC-B6E1-70C350C902D2")
        GW2Client.instance.achievements.groups.get(parameters: [qp], completion: { result in
            switch result {
            case .success(let achievementResult):
                guard let achievementResults = achievementResult else { return }
                print("\n\n\n[*****RESULTS*****]\n")
                print(achievementResults)
                print("\n\n\n")
            case .failure(let error):
                print("Error: \(error)")
            }
        })
        GW2Client.instance.achievements.daily.get() { result in
            switch result {
            case .success(let achievementResult):
                guard let achievementResults = achievementResult else { return }
                print("\n\n\n[*****RESULTS*****]\n")
                print(achievementResults)
                print("\n\n\n")
            case .failure(let error):
                print("Error: \(error)")
            }
        }
         */
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
