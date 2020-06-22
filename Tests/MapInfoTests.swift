//
//  MapInfoTests.swift
//  GW2APITests
//
//  Created by Jonathan Bailey on 7/14/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import XCTest
@testable import GW2API
class MapInfoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        GW2Client.instance.setLanguage(lang: testingLanguage)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testContinentsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.get() { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testContinentsID() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.get(id: 1) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testContinentsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.get(ids: [1, 2]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testFloorsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.get(continentID: 1) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testFloorsID() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.get(continentID: 1, floorID: 0) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testFloorsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.get(continentID: 1, floorIDs: [0, 1]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRegionsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.get(continentID: 1, floorID: 1) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRegionsID() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.get(continentID: 1, floorID: 1, regionID: 1) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRegionsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.get(continentID: 1, floorID: 1, regionIDs: [1, 2]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMapsIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.maps.get(continentID: 1, floorID: 1, regionID: 1) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMapsID() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.maps.get(continentID: 1, floorID: 1, regionID: 1, mapID: 26) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMapsIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.maps.get(continentID: 1, floorID: 1, regionID: 1, mapIDs: [26, 27]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPOIIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.maps.pois.get(continentID: 1, floorID: 1, regionID: 1, mapID: 26) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPOIID() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.maps.pois.get(continentID: 1, floorID: 1, regionID: 1, mapID: 26, poiID: 554) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPOIIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.maps.pois.get(continentID: 1, floorID: 1, regionID: 1, mapID: 26, poiIDs: [554, 555]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testSectorIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.maps.sectors.get(continentID: 1, floorID: 1, regionID: 1, mapID: 26) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testSectorID() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.maps.sectors.get(continentID: 1, floorID: 1, regionID: 1, mapID: 26, sectorID: 513) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testSectorIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.maps.sectors.get(continentID: 1, floorID: 1, regionID: 1, mapID: 26, sectorIDs: [513, 514]) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTaskIDList() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.maps.tasks.get(continentID: 1, floorID: 1, regionID: 1, mapID: 26) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTaskID() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.maps.tasks.get(continentID: 1, floorID: 1, regionID: 1, mapID: 26, taskID: 1) { result in
            switch result {
            case .success(_):
                expectation.fulfill()
            case .failure(let error):
                print("\n\(error.localizedDescription)\n")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testTaskIDs() {
        let expectation = self.expectation(description: "Querying GW2Client/mapinfo...")
        GW2Client.instance.mapinfo.continents.floors.regions.maps.tasks.get(continentID: 1, floorID: 1, regionID: 1, mapID: 26, taskIDs: [1, 2]) { result in
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
