//
//  StoryTests.swift
//  GW2APITests
//
//  Created by Jonathan Bailey on 7/15/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import XCTest
@testable import GW2API
class StoryTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStoryIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testStoryID() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.get(id: 1) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testStoryIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.get(ids: [1, 2, 3, 7]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testStoryIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.get(page: 0, page_size: 8) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testBSAnswersIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.backstory.answers.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testBSAnswersID() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.backstory.answers.get(id: "7-54") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testBSAnswersIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.backstory.answers.get(ids: ["7-54", "188-189", "22-109"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testBSAnswersIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.backstory.answers.get(page: 0, page_size: 4) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testBSQuestionsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.backstory.questions.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testBSQuestionsID() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.backstory.questions.get(id: 7) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testBSQuestionsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.backstory.questions.get(ids: [7, 10, 11, 12]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testBSQuestionsIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.backstory.questions.get(page: 0, page_size: 6) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testStorySeasonsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.seasons.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testStorySeasonsID() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.seasons.get(id: "A515A1D3-4BD7-4594-AE30-2C5D05FF5960") { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testStorySeasonsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.seasons.get(ids: ["A515A1D3-4BD7-4594-AE30-2C5D05FF5960", "C22AFD21-667A-4AA8-8210-AC74EAEE58BB"]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testStorySeasonsIDPaged() {
        let expectation = self.expectation(description: "Querying GW2Client/story...")
        GW2Client.instance.story.seasons.get(page: 0, page_size: 4) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
}
