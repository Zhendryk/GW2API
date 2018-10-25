//
//  MapInfoEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import GenericAPIClient

struct GetContinentIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetContinent: APIRequest {
    typealias Response = Continent
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: Int? = nil) {
        self.id = id
    }
}

struct GetContinents: APIRequest {
    typealias Response = [Continent]
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(ids: [Int]? = nil) {
        self.ids = ids
    }
}

struct GetFloorIDsForContinent: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(continentID: Int) {
        self.extraPathComponents.append(String(continentID))
        self.extraPathComponents.append("floors")
    }
}

struct GetFloorInContinent: APIRequest {
    typealias Response = Floor
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(continentID: Int, floorID: Int? = nil) {
        self.id = floorID
        self.extraPathComponents.append(String(continentID))
        self.extraPathComponents.append("floors")
    }
}

struct GetFloorsInContinent: APIRequest {
    typealias Response = [Floor]
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(continentID: Int, floorIDs: [Int]? = nil) {
        self.ids = floorIDs
        self.extraPathComponents.append(String(continentID))
        self.extraPathComponents.append("floors")
    }
}

struct GetRegionIDsInFloorInContinent: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(continentID: Int, floorID: Int) {
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
    }
}

struct GetRegionInFloorInContinent: APIRequest {
    typealias Response = Region
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(continentID: Int, floorID: Int, regionID: Int? = nil) {
        self.id = regionID
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
    }
}

struct GetRegionsInFloorInContinent: APIRequest {
    typealias Response = [Region]
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(continentID: Int, floorID: Int, regionIDs: [Int]? = nil) {
        self.ids = regionIDs
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
    }
}

struct GetMapIDsInRegionInFloorInContinent: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(continentID: Int, floorID: Int, regionID: Int) {
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
        self.extraPathComponents.append("\(regionID)")
        self.extraPathComponents.append("maps")
    }
}

struct GetMapInRegionInFloorInContinent: APIRequest {
    typealias Response = DetailedMap
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int? = nil) {
        self.id = mapID
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
        self.extraPathComponents.append("\(regionID)")
        self.extraPathComponents.append("maps")
    }
}

struct GetMapsInRegionInFloorInContinent: APIRequest {
    typealias Response = [DetailedMap]
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(continentID: Int, floorID: Int, regionID: Int, mapIDs: [Int]?) {
        self.ids = mapIDs
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
        self.extraPathComponents.append("\(regionID)")
        self.extraPathComponents.append("maps")
    }
}

struct GetSectorIDsInMapInRegionInFloorInContinent: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int) {
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
        self.extraPathComponents.append("\(regionID)")
        self.extraPathComponents.append("maps")
        self.extraPathComponents.append("\(mapID)")
        self.extraPathComponents.append("sectors")
    }
}

struct GetSectorInMapInRegionInFloorInContinent: APIRequest {
    typealias Response = Sector
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int, sectorID: Int? = nil) {
        self.id = sectorID
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
        self.extraPathComponents.append("\(regionID)")
        self.extraPathComponents.append("maps")
        self.extraPathComponents.append("\(mapID)")
        self.extraPathComponents.append("sectors")
    }
}

struct GetSectorsInMapInRegionInFloorInContinent: APIRequest {
    typealias Response = [Sector]
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int, sectorIDs: [Int]? = nil) {
        self.ids = sectorIDs
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
        self.extraPathComponents.append("\(regionID)")
        self.extraPathComponents.append("maps")
        self.extraPathComponents.append("\(mapID)")
        self.extraPathComponents.append("sectors")
    }
}

struct GetPOIIDsInMapInRegionInFloorInContinent: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int) {
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
        self.extraPathComponents.append("\(regionID)")
        self.extraPathComponents.append("maps")
        self.extraPathComponents.append("\(mapID)")
        self.extraPathComponents.append("pois")
    }
}

struct GetPOIInMapInRegionInFloorInContinent: APIRequest {
    typealias Response = POI
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int, poiID: Int? = nil) {
        self.id = poiID
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
        self.extraPathComponents.append("\(regionID)")
        self.extraPathComponents.append("maps")
        self.extraPathComponents.append("\(mapID)")
        self.extraPathComponents.append("pois")
    }
}

struct GetPOIsInMapInRegionInFloorInContinent: APIRequest {
    typealias Response = [POI]
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int, poiIDs: [Int]? = nil) {
        self.ids = poiIDs
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
        self.extraPathComponents.append("\(regionID)")
        self.extraPathComponents.append("maps")
        self.extraPathComponents.append("\(mapID)")
        self.extraPathComponents.append("pois")
    }
}

struct GetTaskIDsInMapInRegionInFloorInContinent: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int) {
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
        self.extraPathComponents.append("\(regionID)")
        self.extraPathComponents.append("maps")
        self.extraPathComponents.append("\(mapID)")
        self.extraPathComponents.append("tasks")
    }
}

struct GetTaskInMapInRegionInFloorInContinent: APIRequest {
    typealias Response = Task
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int, taskID: Int? = nil) {
        self.id = taskID
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
        self.extraPathComponents.append("\(regionID)")
        self.extraPathComponents.append("maps")
        self.extraPathComponents.append("\(mapID)")
        self.extraPathComponents.append("tasks")
    }
}

struct GetTasksInMapInRegionInFloorInContinent: APIRequest {
    typealias Response = [Task]
    
    var resource: String { return "/continents" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int, taskIDs: [Int]? = nil) {
        self.ids = taskIDs
        self.extraPathComponents.append("\(continentID)")
        self.extraPathComponents.append("floors")
        self.extraPathComponents.append("\(floorID)")
        self.extraPathComponents.append("regions")
        self.extraPathComponents.append("\(regionID)")
        self.extraPathComponents.append("maps")
        self.extraPathComponents.append("\(mapID)")
        self.extraPathComponents.append("tasks")
    }
}

struct GetSimpleMapIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/maps" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init() {}
}

struct GetSimpleMap: APIRequest {
    typealias Response = Map
    
    var resource: String { return "/maps" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: Int? = nil) {
        self.id = id
    }
}

struct GetSimpleMaps: APIRequest {
    typealias Response = [Map]
    
    var resource: String { return "/maps" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case ids
    }
    
    init(ids: [Int]? = nil) {
        self.ids = ids
    }
}
