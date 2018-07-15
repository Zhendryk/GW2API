//
//  EMapInfo.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/12/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

enum EMapInfo {
    case continents
    case floors
    case regions
    case maps
    case detailedMaps
    case sectors
    case pois
    case tasks
}

extension EMapInfo : Endpoint {
    var path: String {
        switch self {
        case .continents: return "continents"
        case .maps: return "maps"
        case .floors: return "continents/:continent_id:/floors"
        case .regions: return "continents/:continent_id:/floors/:floor_id:/regions"
        case .detailedMaps: return "continents/:continent_id:/floors/:floor_id:/regions/:region_id:/maps"
        case .sectors: return "continents/:continent_id:/floors/:floor_id:/regions/:region_id:/maps/:map_id:/sectors"
        case .pois: return "continents/:continent_id:/floors/:floor_id:/regions/:region_id:/maps/:map_id:/pois"
        case .tasks: return "continents/:continent_id:/floors/:floor_id:/regions/:region_id:/maps/:map_id:/tasks"
        }
    }
    
    func subresourceIDList(_ subresource: EMapInfo, continentID: Int = -1, floorID: Int = -1, regionID: Int = -1, mapID: Int = -1, sectorID: Int = -1, poiID: Int = -1, taskID: Int = -1) -> URLRequest {
        switch subresource {
        case .continents:
            return EMapInfo.continents.request
        case .maps:
            return EMapInfo.maps.request
        case .floors:
            return insertBaseIDs(into: EMapInfo.floors.request, continentID)
        case .regions:
            return insertBaseIDs(into: EMapInfo.regions.request, continentID, floorID)
        case .detailedMaps:
            return insertBaseIDs(into: EMapInfo.detailedMaps.request, continentID, floorID, regionID)
        case .sectors:
            return insertBaseIDs(into: EMapInfo.sectors.request, continentID, floorID, regionID, mapID)
        case .pois:
            return insertBaseIDs(into: EMapInfo.pois.request, continentID, floorID, regionID, mapID)
        case .tasks:
            return insertBaseIDs(into: EMapInfo.tasks.request, continentID, floorID, regionID, mapID)
        }
    }
    
    func individualSubresource(_ subresource: EMapInfo, continentID: Int = -1, floorID: Int = -1, regionID: Int = -1, mapID: Int = -1, sectorID: Int = -1, poiID: Int = -1, taskID: Int = -1) -> URLRequest {
        switch subresource {
        case .continents:
            var request = EMapInfo.continents.request
            request.url!.appendPathComponent(String(continentID))
            return request
        case .maps:
            var request = EMapInfo.maps.request
            request.url!.appendPathComponent(String(mapID))
            return request
        case .floors:
            var request = insertBaseIDs(into: EMapInfo.floors.request, continentID)
            request.url!.appendPathComponent(String(floorID))
            return request
        case .regions:
            var request = insertBaseIDs(into: EMapInfo.regions.request, continentID, floorID)
            request.url!.appendPathComponent(String(regionID))
            return request
        case .detailedMaps:
            var request = insertBaseIDs(into: EMapInfo.detailedMaps.request, continentID, floorID, regionID)
            request.url!.appendPathComponent(String(mapID))
            return request
        case .sectors:
            var request = insertBaseIDs(into: EMapInfo.sectors.request, continentID, floorID, regionID, mapID)
            request.url!.appendPathComponent(String(sectorID))
            return request
        case .pois:
            var request = insertBaseIDs(into: EMapInfo.pois.request, continentID, floorID, regionID, mapID)
            request.url!.appendPathComponent(String(poiID))
            return request
        case .tasks:
            var request = insertBaseIDs(into: EMapInfo.tasks.request, continentID, floorID, regionID, mapID)
            request.url!.appendPathComponent(String(taskID))
            return request
        }
    }
    
    private func insertBaseIDs(into request: URLRequest, _ continentID: Int = -1, _ floorID: Int = -1, _ regionID: Int = -1, _ mapID: Int = -1) -> URLRequest {
        var str = request.url!.absoluteString
        if continentID != -1 {
            str = str.replacingOccurrences(of: ":continent_id:", with: String(continentID))
        }
        if floorID != -1 {
            str = str.replacingOccurrences(of: ":floor_id:", with: String(floorID))
        }
        if regionID != -1 {
            str = str.replacingOccurrences(of: ":region_id:", with: String(regionID))
        }
        if mapID != -1 {
            str = str.replacingOccurrences(of: ":map_id:", with: String(mapID))
        }
        return URLRequest(url: URL(string: str)!)
    }
}
