//
//  MapInfoEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation
import APIClient

class GetContinentIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/continents")
    }
}

class GetContinent: GetRequest<Continent> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/continents", urlQueryParameters: urlQP)
    }
}

class GetContinents: GetRequest<[Continent]> {
    init(ids: [Int]? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/continents", urlQueryParameters: urlQP)
    }
}

class GetFloorIDsForContinent: GetRequest<[Int]> {
    init(continentID: Int) {
        super.init(resource: "/continents/:id/floors", urlPathParameters: [":id" : HTTPParameter.int(continentID).description])
    }
}

class GetFloorInContinent: GetRequest<Floor> {
    init(continentID: Int, floorID: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let floorID = floorID {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(floorID).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/continents/:id/floors", urlQueryParameters: urlQP, urlPathParameters: [":id" : HTTPParameter.int(continentID).description])
    }
}

class GetFloorsInContinent: GetRequest<[Floor]> {
    init(continentID: Int, floorIDs: [Int]? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let floorIDs = floorIDs {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(floorIDs).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/continents/:id/floors", urlQueryParameters: urlQP, urlPathParameters: [":id" : HTTPParameter.int(continentID).description])
    }
}

class GetRegionIDsInFloorInContinent: GetRequest<[Int]> {
    init(continentID: Int, floorID: Int) {
        super.init(resource: "/continents/:continentID/floors/:floorID/regions", urlPathParameters: [":continentID" : HTTPParameter.int(continentID).description, ":floorID" : HTTPParameter.int(floorID).description])
    }
}

class GetRegionInFloorInContinent: GetRequest<Region> {
    init(continentID: Int, floorID: Int, regionID: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let regionID = regionID {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(regionID).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/continents/:continentID/floors/:floorID/regions", urlQueryParameters: urlQP, urlPathParameters: [":continentID" : HTTPParameter.int(continentID).description, ":floorID" : HTTPParameter.int(floorID).description])
    }
}

class GetRegionsInFloorInContinent: GetRequest<[Region]> {
    init(continentID: Int, floorID: Int, regionIDs: [Int]? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let regionIDs = regionIDs {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(regionIDs).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/continents/:continentID/floors/:floorID/regions", urlQueryParameters: urlQP, urlPathParameters: [":continentID" : HTTPParameter.int(continentID).description, ":floorID" : HTTPParameter.int(floorID).description])
    }
}

class GetMapIDsInRegionInFloorInContinent: GetRequest<[Int]> {
    init(continentID: Int, floorID: Int, regionID: Int) {
        super.init(resource: "/continents/:continentID/floors/:floorID/regions/:regionID/maps", urlPathParameters: [":continentID" : HTTPParameter.int(continentID).description, ":floorID" : HTTPParameter.int(floorID).description, ":regionID" : HTTPParameter.int(regionID).description])
    }
}

class GetMapInRegionInFloorInContinent: GetRequest<DetailedMap> {
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let mapID = mapID {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(mapID).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/continents/:continentID/floors/:floorID/regions/:regionID/maps", urlQueryParameters: urlQP, urlPathParameters: [":continentID" : HTTPParameter.int(continentID).description, ":floorID" : HTTPParameter.int(floorID).description, ":regionID" : HTTPParameter.int(regionID).description])
    }
}

class GetMapsInRegionInFloorInContinent: GetRequest<[DetailedMap]> {
    init(continentID: Int, floorID: Int, regionID: Int, mapIDs: [Int]? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let mapIDs = mapIDs {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(mapIDs).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/continents/:continentID/floors/:floorID/regions/:regionID/maps", urlQueryParameters: urlQP, urlPathParameters: [":continentID" : HTTPParameter.int(continentID).description, ":floorID" : HTTPParameter.int(floorID).description, ":regionID" : HTTPParameter.int(regionID).description])
    }
}

class GetSectorIDsInMapInRegionInFloorInContinent: GetRequest<[Int]> {
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int) {
        super.init(resource: "/continents/:continentID/floors/:floorID/regions/:regionID/maps/:mapID/sectors", urlPathParameters: [":continentID":HTTPParameter.int(continentID).description, ":floorID":HTTPParameter.int(floorID).description, ":regionID":HTTPParameter.int(regionID).description, ":mapID":HTTPParameter.int(mapID).description])
    }
}

class GetSectorInMapInRegionInFloorInContinent: GetRequest<Sector> {
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int, sectorID: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let sectorID = sectorID {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(sectorID).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/continents/:continentID/floors/:floorID/regions/:regionID/maps/:mapID/sectors", urlQueryParameters: urlQP, urlPathParameters: [":continentID":HTTPParameter.int(continentID).description, ":floorID":HTTPParameter.int(floorID).description, ":regionID":HTTPParameter.int(regionID).description, ":mapID":HTTPParameter.int(mapID).description])
    }
}

class GetSectorsInMapInRegionInFloorInContinent: GetRequest<[Sector]> {
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int, sectorIDs: [Int]? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let sectorIDs = sectorIDs {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(sectorIDs).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/continents/:continentID/floors/:floorID/regions/:regionID/maps/:mapID/sectors", urlQueryParameters: urlQP, urlPathParameters: [":continentID":HTTPParameter.int(continentID).description, ":floorID":HTTPParameter.int(floorID).description, ":regionID":HTTPParameter.int(regionID).description, ":mapID":HTTPParameter.int(mapID).description])
    }
}

class GetPOIIDsInMapInRegionInFloorInContinent: GetRequest<[Int]> {
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int) {
        super.init(resource: "/continents/:continentID/floors/:floorID/regions/:regionID/maps/:mapID/pois", urlPathParameters: [":continentID":HTTPParameter.int(continentID).description, ":floorID":HTTPParameter.int(floorID).description, ":regionID":HTTPParameter.int(regionID).description, ":mapID":HTTPParameter.int(mapID).description])
    }
}

class GetPOIInMapInRegionInFloorInContinent: GetRequest<POI> {
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int, poiID: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let poiID = poiID {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(poiID).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/continents/:continentID/floors/:floorID/regions/:regionID/maps/:mapID/pois", urlQueryParameters: urlQP, urlPathParameters: [":continentID":HTTPParameter.int(continentID).description, ":floorID":HTTPParameter.int(floorID).description, ":regionID":HTTPParameter.int(regionID).description, ":mapID":HTTPParameter.int(mapID).description])
    }
}

class GetPOIsInMapInRegionInFloorInContinent: GetRequest<[POI]> {
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int, poiIDs: [Int]? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let poiIDs = poiIDs {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(poiIDs).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/continents/:continentID/floors/:floorID/regions/:regionID/maps/:mapID/pois", urlQueryParameters: urlQP, urlPathParameters: [":continentID":HTTPParameter.int(continentID).description, ":floorID":HTTPParameter.int(floorID).description, ":regionID":HTTPParameter.int(regionID).description, ":mapID":HTTPParameter.int(mapID).description])
    }
}

class GetTaskIDsInMapInRegionInFloorInContinent: GetRequest<[Int]> {
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int) {
        super.init(resource: "/continents/:continentID/floors/:floorID/regions/:regionID/maps/:mapID/tasks", urlPathParameters: [":continentID":HTTPParameter.int(continentID).description, ":floorID":HTTPParameter.int(floorID).description, ":regionID":HTTPParameter.int(regionID).description, ":mapID":HTTPParameter.int(mapID).description])
    }
}

class GetTaskInMapInRegionInFloorInContinent: GetRequest<Task> {
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int, taskID: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let taskID = taskID {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(taskID).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/continents/:continentID/floors/:floorID/regions/:regionID/maps/:mapID/tasks", urlQueryParameters: urlQP, urlPathParameters: [":continentID":HTTPParameter.int(continentID).description, ":floorID":HTTPParameter.int(floorID).description, ":regionID":HTTPParameter.int(regionID).description, ":mapID":HTTPParameter.int(mapID).description])
    }
}

class GetTasksInMapInRegionInFloorInContinent: GetRequest<[Task]> {
    init(continentID: Int, floorID: Int, regionID: Int, mapID: Int, taskIDs: [Int]? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let taskIDs = taskIDs {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(taskIDs).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/continents/:continentID/floors/:floorID/regions/:regionID/maps/:mapID/tasks", urlQueryParameters: urlQP, urlPathParameters: [":continentID":HTTPParameter.int(continentID).description, ":floorID":HTTPParameter.int(floorID).description, ":regionID":HTTPParameter.int(regionID).description, ":mapID":HTTPParameter.int(mapID).description])
    }
}

class GetSimpleMapIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/maps")
    }
}

class GetSimpleMap: GetRequest<Map> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/maps", urlQueryParameters: urlQP)
    }
}

class GetSimpleMaps: GetRequest<[Map]> {
    init(ids: [Int]? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/maps", urlQueryParameters: urlQP)
    }
}
