//
//  MapInfoClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/12/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

/// The map information endpoint client: api.guildwars2.com/v2/maps
class MapInfoClient : Client {
    
    /// The continents endpoint: api.guildwars2.com/v2/continents
    let continents: ContinentsClient = ContinentsClient()
    
    /// The maps endpoint: api.guildwars2.com/v2/maps
    let maps: MapsClient = MapsClient()
    
    /// Sets the language of every sub endpoint
    ///
    /// - Parameter language: The language to set
    override func setLanguage(_ language: String) {
        self.continents.setLanguage(language)
        self.maps.setLanguage(language)
    }
    
    /// The continents endpoint client: api.guildwars2.com/v2/continents
    class ContinentsClient : Client {
        
        /// The floors endpoint: api.guildwars2.com/v2/continents/<continent_id>/floors
        let floors: FloorsClient = FloorsClient()
        
        /// Sets the language of every sub endpoint
        ///
        /// - Parameter language: The language to set
        override func setLanguage(_ language: String) {
            self.lang = language
            self.floors.setLanguage(language)
        }
        
        /// Returns a list of all continent ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EMapInfo.continents.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the continent corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The ID of the continent you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Continent?, APIError>)
        func get(id: Int, completion: @escaping (Result<Continent?, APIError>) -> Void) {
            fetchAsync(with: EMapInfo.continents.idRequest(id: String(id)), decode: { json -> Continent? in
                guard let res = json as? Continent else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more continents corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The IDs of the continents you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Continent]?, APIError>)
        func get(ids: [Int], completion: @escaping (Result<[Continent]?, APIError>) -> Void) {
            fetchAsync(with: EMapInfo.continents.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [Continent]? in
                guard let res = json as? [Continent] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// The floors endpoint client: api.guildwars2.com/v2/continents/<continent_id>/floors
        class FloorsClient : Client {
            
            /// The regions endpoint: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions
            let regions: RegionsClient = RegionsClient()
            
            /// Sets the language of every sub endpoint
            ///
            /// - Parameter language: The language to set
            override func setLanguage(_ language: String) {
                self.lang = language
                self.regions.setLanguage(language)
            }
            
            /// Returns a list of all floor ids for the given continent
            ///
            /// - Parameters:
            ///   - continentID: The ID of the continent you are searching for floors
            ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
            func get(continentID: Int, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
                fetchAsync(with: EMapInfo.floors.subresourceIDList(EMapInfo.floors, continentID), decode: { json -> [Int]? in
                    guard let res = json as? [Int] else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the given floor in the given continent corresponding to the given ids for each
            ///
            /// - Parameters:
            ///   - continentID: The ID of the continent you are searching in
            ///   - floorID: The ID of the floor in the continent
            ///   - completion: Callback function to handle the data returned from the API (Result<Floor?, APIError>)
            func get(continentID: Int, floorID: Int, completion: @escaping (Result<Floor?, APIError>) -> Void) {
                fetchAsync(with: EMapInfo.floors.individualSubresource(EMapInfo.floors, continentID, floorID), decode: { json -> Floor? in
                    guard let res = json as? Floor else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns one or more floors from the given continent corresponding to the given ids
            ///
            /// - Parameters:
            ///   - continentID: The ID of the continent you are searching in
            ///   - floorIDs: The id(s) of the floor(s) in the continent
            ///   - completion: Callback function to handle the data returned from the API (Result<[Floor]?, APIError>)
            func get(continentID: Int, floorIDs: [Int], completion: @escaping (Result<[Floor]?, APIError>) -> Void) {
                fetchAsync(with: EMapInfo.floors.subresourceIDList(EMapInfo.floors, continentID), parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(floorIDs))], decode: { json -> [Floor]? in
                    guard let res = json as? [Floor] else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// The regions endpoint client: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions
            class RegionsClient : Client {
                
                /// The maps endpoint: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps
                let maps: DetailedMapClient = DetailedMapClient()
                
                /// Sets the language of every sub endpoint
                ///
                /// - Parameter language: The language to set
                override func setLanguage(_ language: String) {
                    self.lang = language
                    self.maps.setLanguage(language)
                }
                
                /// Returns a list of all region ids within the given floor of the given continent
                ///
                /// - Parameters:
                ///   - continentID: The ID of the continent you are searching in
                ///   - floorID: The ID of the floor within the continent you are searching in
                ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
                func get(continentID: Int, floorID: Int, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
                    fetchAsync(with: EMapInfo.regions.subresourceIDList(EMapInfo.regions, continentID, floorID), decode: { json -> [Int]? in
                        guard let res = json as? [Int] else { return nil }
                        return res
                    }, completion: completion)
                }
                
                /// Returns the specified region within the given floor of the given continent
                ///
                /// - Parameters:
                ///   - continentID: The ID of the continent you are searching in
                ///   - floorID: The ID of the floor within the continent you are searching in
                ///   - regionID: The ID of the region you are searching for
                ///   - completion: Callback function to handle the data returned from the API (Result<Region?, APIError>)
                func get(continentID: Int, floorID: Int, regionID: Int, completion: @escaping (Result<Region?, APIError>) -> Void) {
                    fetchAsync(with: EMapInfo.regions.individualSubresource(EMapInfo.regions, continentID, floorID, regionID), decode: { json -> Region? in
                        guard let res = json as? Region else { return nil }
                        return res
                    }, completion: completion)
                }
                
                /// Returns one or more specified regions within the given floor of the given continent
                ///
                /// - Parameters:
                ///   - continentID: The ID of the continent you are searching in
                ///   - floorID: The ID of the floor within the continent you are searching in
                ///   - regionIDs: The ID(s) of the region(s) you are searching for
                ///   - completion: Callback function to handle the data returned from the API (Result<[Region]?, APIError>)
                func get(continentID: Int, floorID: Int, regionIDs: [Int], completion: @escaping (Result<[Region]?, APIError>) -> Void) {
                    fetchAsync(with: EMapInfo.regions.subresourceIDList(EMapInfo.regions, continentID, floorID), parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(regionIDs))], decode: { json -> [Region]? in
                        guard let res = json as? [Region] else { return nil }
                        return res
                    }, completion: completion)
                }
                
                
                /// The map endpoint client: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps
                class DetailedMapClient : Client {
                    
                    /// The sectors endpoint: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/sectors
                    let sectors: SectorsClient = SectorsClient()
                    
                    /// The points of interest endpoint: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/pois
                    let pois: POIClient = POIClient()
                    
                    /// The tasks endpoint: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/tasks
                    let tasks: TasksClient = TasksClient()
                    
                    /// Sets the language of every sub endpoint
                    ///
                    /// - Parameter language: The language to set
                    override func setLanguage(_ language: String) {
                        self.lang = language
                        self.sectors.setLanguage(language)
                        self.pois.setLanguage(language)
                        self.tasks.setLanguage(language)
                    }
                    
                    /// Returns a list of all map ids within the given region of the given floor of the given continent
                    ///
                    /// - Parameters:
                    ///   - continentID: The ID of the continent you are searching in
                    ///   - floorID: The ID of the floor within the continent you are searching in
                    ///   - regionID: The ID of the region within the floor within the continent you are searching in
                    ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
                    func get(continentID: Int, floorID: Int, regionID: Int, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
                        fetchAsync(with: EMapInfo.detailedMaps.subresourceIDList(EMapInfo.detailedMaps, continentID, floorID, regionID), decode: { json -> [Int]? in
                            guard let res = json as? [Int] else { return nil }
                            return res
                        }, completion: completion)
                    }
                    
                    /// Returns the specified map within the given region within the given floor within the given continent
                    ///
                    /// - Parameters:
                    ///   - continentID: The ID of the continent you are searching in
                    ///   - floorID: The ID of the floor within the continent you are searching in
                    ///   - regionID: The ID of the region within the floor within the continent you are searching in
                    ///   - mapID: The ID of the map you are searching for
                    ///   - completion: Callback function to handle the data returned from the API (Result<DetailedMap?, APIError>)
                    func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, completion: @escaping (Result<DetailedMap?, APIError>) -> Void) {
                        fetchAsync(with: EMapInfo.detailedMaps.individualSubresource(EMapInfo.detailedMaps, continentID, floorID, regionID, mapID), decode: { json -> DetailedMap? in
                            guard let res = json as? DetailedMap else { return nil }
                            return res
                        }, completion: completion)
                    }
                    
                    /// Returns one or more specified maps within the given region within the given floor within the given continent
                    ///
                    /// - Parameters:
                    ///   - continentID: The ID of the continent you are searching in
                    ///   - floorID: The ID of the floor within the continent you are searching in
                    ///   - regionID: The ID of the region within the floor within the continent you are searching in
                    ///   - mapIDs: The ID of the map you are searching for
                    ///   - completion: Callback function to handle the data returned from the API (Result<[DetailedMap]?, APIError>)
                    func get(continentID: Int, floorID: Int, regionID: Int, mapIDs: [Int], completion: @escaping (Result<[DetailedMap]?, APIError>) -> Void) {
                        fetchAsync(with: EMapInfo.detailedMaps.subresourceIDList(EMapInfo.detailedMaps, continentID, floorID, regionID), parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(mapIDs))], decode: { json -> [DetailedMap]? in
                            guard let res = json as? [DetailedMap] else { return nil }
                            return res
                        }, completion: completion)
                    }
                    
                    
                    /// The sectors endpoint client: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/sectors
                    class SectorsClient : Client {
                        
                        /// Returns a list of all sector ids within the given map within the given region within the given floor within the given continent
                        ///
                        /// - Parameters:
                        ///   - continentID: The ID of the continent you are searching in
                        ///   - floorID: The ID of the floor within the continent you are searching in
                        ///   - regionID: The ID of the region within the floor within the continent you are searching in
                        ///   - mapID: The ID of the map within the region within the floor within the continent you are searching in
                        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
                        func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
                            fetchAsync(with: EMapInfo.sectors.subresourceIDList(EMapInfo.sectors, continentID, floorID, regionID, mapID), decode: { json -> [Int]? in
                                guard let res = json as? [Int] else { return nil }
                                return res
                            }, completion: completion)
                        }
                        
                        /// Returns the specified sector within the given map within the given region within the given floor within the given continent
                        ///
                        /// - Parameters:
                        ///   - continentID: The ID of the continent you are searching in
                        ///   - floorID: The ID of the floor within the continent you are searching in
                        ///   - regionID: The ID of the region within the floor within the continent you are searching in
                        ///   - mapID: The ID of the map within the region within the floor within the continent you are searching in
                        ///   - sectorID: The ID of the sector you are searching for
                        ///   - completion: Callback function to handle the data returned from the API (Result<Sector?, APIError>)
                        func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, sectorID: Int, completion: @escaping (Result<Sector?, APIError>) -> Void) {
                            fetchAsync(with: EMapInfo.sectors.individualSubresource(EMapInfo.sectors, continentID, floorID, regionID, mapID, sectorID), decode: { json -> Sector? in
                                guard let res = json as? Sector else { return nil }
                                return res
                            }, completion: completion)
                        }
                        
                        /// Returns one or more sectors within the given map within the given region within the given floor within the given continent
                        ///
                        /// - Parameters:
                        ///   - continentID: The ID of the continent you are searching in
                        ///   - floorID: The ID of the floor within the continent you are searching in
                        ///   - regionID: The ID of the region within the floor within the continent you are searching in
                        ///   - mapID: The ID of the map within the region within the floor within the continent you are searching in
                        ///   - sectorIDs: The ID(s) of the sector(s) you are searching for
                        ///   - completion: Callback function to handle the data returned from the API (Result<[Sector]?, APIError>)
                        func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, sectorIDs: [Int], completion: @escaping (Result<[Sector]?, APIError>) -> Void) {
                            fetchAsync(with: EMapInfo.sectors.subresourceIDList(EMapInfo.sectors, continentID, floorID, regionID, mapID), parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(sectorIDs))], decode: { json -> [Sector]? in
                                guard let res = json as? [Sector] else { return nil }
                                return res
                            }, completion: completion)
                        }
                    }
                    
                    /// The point of interest endpoint client: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/pois
                    class POIClient : Client {
                        /// Returns a list of all point of interest ids within the given map within the given region within the given floor within the given continent
                        ///
                        /// - Parameters:
                        ///   - continentID: The ID of the continent you are searching in
                        ///   - floorID: The ID of the floor within the continent you are searching in
                        ///   - regionID: The ID of the region within the floor within the continent you are searching in
                        ///   - mapID: The ID of the map within the region within the floor within the continent you are searching in
                        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
                        func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
                            fetchAsync(with: EMapInfo.pois.subresourceIDList(EMapInfo.pois, continentID, floorID, regionID, mapID), decode: { json -> [Int]? in
                                guard let res = json as? [Int] else { return nil }
                                return res
                            }, completion: completion)
                        }
                        
                        /// Returns the specified point of interest within the given map within the given region within the given floor within the given continent
                        ///
                        /// - Parameters:
                        ///   - continentID: The ID of the continent you are searching in
                        ///   - floorID: The ID of the floor within the continent you are searching in
                        ///   - regionID: The ID of the region within the floor within the continent you are searching in
                        ///   - mapID: The ID of the map within the region within the floor within the continent you are searching in
                        ///   - poiID: The ID of the poi you are searching for
                        ///   - completion: Callback function to handle the data returned from the API (Result<POI?, APIError>)
                        func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, poiID: Int, completion: @escaping (Result<POI?, APIError>) -> Void) {
                            fetchAsync(with: EMapInfo.pois.individualSubresource(EMapInfo.pois, continentID, floorID, regionID, mapID, poiID), decode: { json -> POI? in
                                guard let res = json as? POI else { return nil }
                                return res
                            }, completion: completion)
                        }
                        
                        /// Returns one or more points of interest within the given map within the given region within the given floor within the given continent
                        ///
                        /// - Parameters:
                        ///   - continentID: The ID of the continent you are searching in
                        ///   - floorID: The ID of the floor within the continent you are searching in
                        ///   - regionID: The ID of the region within the floor within the continent you are searching in
                        ///   - mapID: The ID of the map within the region within the floor within the continent you are searching in
                        ///   - poiIDs: The ID(s) of the poi(s) you are searching for
                        ///   - completion: Callback function to handle the data returned from the API (Result<[POI]?, APIError>)
                        func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, poiIDs: [Int], completion: @escaping (Result<[POI]?, APIError>) -> Void) {
                            fetchAsync(with: EMapInfo.pois.subresourceIDList(EMapInfo.pois, continentID, floorID, regionID, mapID), parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(poiIDs))], decode: { json -> [POI]? in
                                guard let res = json as? [POI] else { return nil }
                                return res
                            }, completion: completion)
                        }
                    }
                    
                    /// The task endpoint client: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/tasks
                    class TasksClient : Client {
                        /// Returns a list of all task ids within the given map within the given region within the given floor within the given continent
                        ///
                        /// - Parameters:
                        ///   - continentID: The ID of the continent you are searching in
                        ///   - floorID: The ID of the floor within the continent you are searching in
                        ///   - regionID: The ID of the region within the floor within the continent you are searching in
                        ///   - mapID: The ID of the map within the region within the floor within the continent you are searching in
                        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
                        func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
                            fetchAsync(with: EMapInfo.tasks.subresourceIDList(EMapInfo.tasks, continentID, floorID, regionID, mapID), decode: { json -> [Int]? in
                                guard let res = json as? [Int] else { return nil }
                                return res
                            }, completion: completion)
                        }
                        
                        /// Returns the specified task within the given map within the given region within the given floor within the given continent
                        ///
                        /// - Parameters:
                        ///   - continentID: The ID of the continent you are searching in
                        ///   - floorID: The ID of the floor within the continent you are searching in
                        ///   - regionID: The ID of the region within the floor within the continent you are searching in
                        ///   - mapID: The ID of the map within the region within the floor within the continent you are searching in
                        ///   - taskID: The ID of the task you are searching for
                        ///   - completion: Callback function to handle the data returned from the API (Result<Task?, APIError>)
                        func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, taskID: Int, completion: @escaping (Result<Task?, APIError>) -> Void) {
                            fetchAsync(with: EMapInfo.tasks.individualSubresource(EMapInfo.tasks, continentID, floorID, regionID, mapID, taskID), decode: { json -> Task? in
                                guard let res = json as? Task else { return nil }
                                return res
                            }, completion: completion)
                        }
                        
                        /// Returns one or more tasks within the given map within the given region within the given floor within the given continent
                        ///
                        /// - Parameters:
                        ///   - continentID: The ID of the continent you are searching in
                        ///   - floorID: The ID of the floor within the continent you are searching in
                        ///   - regionID: The ID of the region within the floor within the continent you are searching in
                        ///   - mapID: The ID of the map within the region within the floor within the continent you are searching in
                        ///   - taskIDs: The ID(s) of the task(s) you are searching for
                        ///   - completion: Callback function to handle the data returned from the API (Result<[Task]?, APIError>)
                        func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, taskIDs: [Int], completion: @escaping (Result<[Task]?, APIError>) -> Void) {
                            fetchAsync(with: EMapInfo.tasks.subresourceIDList(EMapInfo.tasks, continentID, floorID, regionID, mapID), parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(taskIDs))], decode: { json -> [Task]? in
                                guard let res = json as? [Task] else { return nil }
                                return res
                            }, completion: completion)
                        }
                    }
                }
            }
        }
        
    }
    
    /// The maps endpoint client: api.guildwars2.com/v2/maps
    class MapsClient : Client {
        
        /// Returns a list of all simple map ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EMapInfo.maps.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the specified simple map
        ///
        /// - Parameters:
        ///   - mapID: The ID of the map corresponding to the given id
        ///   - completion: Callback function to handle the data returned from the API (Result<Map?, APIError>)
        func get(mapID: Int, completion: @escaping (Result<Map?, APIError>) -> Void) {
            fetchAsync(with: EMapInfo.maps.idRequest(id: String(mapID)), decode: { json -> Map? in
                guard let res = json as? Map else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more simple maps corresponding to the given ids
        ///
        /// - Parameters:
        ///   - mapIDs: The ID(s) of the map(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Map]?, APIError>)
        func get(mapIDs: [Int], completion: @escaping (Result<[Map]?, APIError>) -> Void) {
            fetchAsync(with: EMapInfo.maps.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(mapIDs))], decode: { json -> [Map]? in
                guard let res = json as? [Map] else { return nil }
                return res
            }, completion: completion)
        }
    }
}
