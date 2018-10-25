//
//  MapInfoClient.swift
//  GW2API
//
//  Created by Zhendryk on 7/12/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

import GenericAPIClient

/// The map information endpoint client: api.guildwars2.com/v2/maps
public class MapInfoClient : Client {
    
    /// The continents endpoint: information about each continent and what each contains
    public let continents: ContinentsClient = ContinentsClient()
    
    /// The maps endpoint: information about maps in the game
    public let maps: MapsClient = MapsClient()
    
    /// Sets the language of every sub endpoint
    ///
    /// - Parameter language: The language to set
    override func setLanguage(_ language: String) {
        self.continents.setLanguage(language)
        self.maps.setLanguage(language)
    }
    
    /// The continents endpoint client: api.guildwars2.com/v2/continents
    public class ContinentsClient : Client {
        
        /// The floors endpoint: api.guildwars2.com/v2/continents/<continent_id>/floors
        public let floors: FloorsClient = FloorsClient()
        
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
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            _ = self.client.send(request: GetContinentIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the continent corresponding to the given id
        ///
        /// - Parameters:
        ///   - id: The ID of the continent you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Continent?, APIError>)
        public func get(id: Int, _ completion: @escaping RequestCallback<Continent>) {
            _ = self.client.send(request: GetContinent(id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more continents corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The IDs of the continents you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Continent]?, APIError>)
        public func get(ids: [Int], _ completion: @escaping RequestCallback<[Continent]>) {
            _ = self.client.send(request: GetContinents(ids: ids)) { result in
                completion(result)
            }
        }
        
        /// The floors endpoint client: api.guildwars2.com/v2/continents/<continent_id>/floors
        public class FloorsClient : Client {
            
            /// The regions endpoint: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions
            public let regions: RegionsClient = RegionsClient()
            
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
            public func get(continentID: Int, _ completion: @escaping RequestCallback<[Int]>) {
                _ = self.client.send(request: GetFloorIDsForContinent(continentID: continentID)) { result in
                    completion(result)
                }
            }
            
            /// Returns the given floor in the given continent corresponding to the given ids for each
            ///
            /// - Parameters:
            ///   - continentID: The ID of the continent you are searching in
            ///   - floorID: The ID of the floor in the continent
            ///   - completion: Callback function to handle the data returned from the API (Result<Floor?, APIError>)
            public func get(continentID: Int, floorID: Int, _ completion: @escaping RequestCallback<Floor>) {
                _ = self.client.send(request: GetFloorInContinent(continentID: continentID, floorID: floorID)) { result in
                    completion(result)
                }
            }
            
            /// Returns one or more floors from the given continent corresponding to the given ids
            ///
            /// - Parameters:
            ///   - continentID: The ID of the continent you are searching in
            ///   - floorIDs: The id(s) of the floor(s) in the continent
            ///   - completion: Callback function to handle the data returned from the API (Result<[Floor]?, APIError>)
            public func get(continentID: Int, floorIDs: [Int], _ completion: @escaping RequestCallback<[Floor]>) {
                _ = self.client.send(request: GetFloorsInContinent(continentID: continentID, floorIDs: floorIDs)) { result in
                    completion(result)
                }
            }
            
            /// The regions endpoint client: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions
            public class RegionsClient : Client {
                
                /// The maps endpoint: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps
                public let maps: DetailedMapClient = DetailedMapClient()
                
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
                public func get(continentID: Int, floorID: Int, _ completion: @escaping RequestCallback<[Int]>) {
                    _ = self.client.send(request: GetRegionIDsInFloorInContinent(continentID: continentID, floorID: floorID)) { result in
                        completion(result)
                    }
                }
                
                /// Returns the specified region within the given floor of the given continent
                ///
                /// - Parameters:
                ///   - continentID: The ID of the continent you are searching in
                ///   - floorID: The ID of the floor within the continent you are searching in
                ///   - regionID: The ID of the region you are searching for
                ///   - completion: Callback function to handle the data returned from the API (Result<Region?, APIError>)
                public func get(continentID: Int, floorID: Int, regionID: Int, _ completion: @escaping RequestCallback<Region>) {
                    _ = self.client.send(request: GetRegionInFloorInContinent(continentID: continentID, floorID: floorID, regionID: regionID)) { result in
                        completion(result)
                    }
                }
                
                /// Returns one or more specified regions within the given floor of the given continent
                ///
                /// - Parameters:
                ///   - continentID: The ID of the continent you are searching in
                ///   - floorID: The ID of the floor within the continent you are searching in
                ///   - regionIDs: The ID(s) of the region(s) you are searching for
                ///   - completion: Callback function to handle the data returned from the API (Result<[Region]?, APIError>)
                public func get(continentID: Int, floorID: Int, regionIDs: [Int], _ completion: @escaping RequestCallback<[Region]>) {
                    _ = self.client.send(request: GetRegionsInFloorInContinent(continentID: continentID, floorID: floorID, regionIDs: regionIDs)) { result in
                        completion(result)
                    }
                }
                
                
                /// The map endpoint client: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps
                public class DetailedMapClient : Client {
                    
                    /// The sectors endpoint: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/sectors
                    public let sectors: SectorsClient = SectorsClient()
                    
                    /// The points of interest endpoint: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/pois
                    public let pois: POIClient = POIClient()
                    
                    /// The tasks endpoint: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/tasks
                    public let tasks: TasksClient = TasksClient()
                    
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
                    public func get(continentID: Int, floorID: Int, regionID: Int, _ completion: @escaping RequestCallback<[Int]>) {
                        _ = self.client.send(request: GetMapIDsInRegionInFloorInContinent(continentID: continentID, floorID: floorID, regionID: regionID)) { result in
                            completion(result)
                        }
                    }
                    
                    /// Returns the specified map within the given region within the given floor within the given continent
                    ///
                    /// - Parameters:
                    ///   - continentID: The ID of the continent you are searching in
                    ///   - floorID: The ID of the floor within the continent you are searching in
                    ///   - regionID: The ID of the region within the floor within the continent you are searching in
                    ///   - mapID: The ID of the map you are searching for
                    ///   - completion: Callback function to handle the data returned from the API (Result<DetailedMap?, APIError>)
                    public func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, _ completion: @escaping RequestCallback<DetailedMap>) {
                        _ = self.client.send(request: GetMapInRegionInFloorInContinent(continentID: continentID, floorID: floorID, regionID: regionID, mapID: mapID)) { result in
                            completion(result)
                        }
                    }
                    
                    /// Returns one or more specified maps within the given region within the given floor within the given continent
                    ///
                    /// - Parameters:
                    ///   - continentID: The ID of the continent you are searching in
                    ///   - floorID: The ID of the floor within the continent you are searching in
                    ///   - regionID: The ID of the region within the floor within the continent you are searching in
                    ///   - mapIDs: The ID of the map you are searching for
                    ///   - completion: Callback function to handle the data returned from the API (Result<[DetailedMap]?, APIError>)
                    public func get(continentID: Int, floorID: Int, regionID: Int, mapIDs: [Int], _ completion: @escaping RequestCallback<[DetailedMap]>) {
                        _ = self.client.send(request: GetMapsInRegionInFloorInContinent(continentID: continentID, floorID: floorID, regionID: regionID, mapIDs: mapIDs)) { result in
                            completion(result)
                        }
                    }
                    
                    
                    /// The sectors endpoint client: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/sectors
                    public class SectorsClient : Client {
                        
                        /// Returns a list of all sector ids within the given map within the given region within the given floor within the given continent
                        ///
                        /// - Parameters:
                        ///   - continentID: The ID of the continent you are searching in
                        ///   - floorID: The ID of the floor within the continent you are searching in
                        ///   - regionID: The ID of the region within the floor within the continent you are searching in
                        ///   - mapID: The ID of the map within the region within the floor within the continent you are searching in
                        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
                        public func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, _ completion: @escaping RequestCallback<[Int]>) {
                            _ = self.client.send(request: GetSectorIDsInMapInRegionInFloorInContinent(continentID: continentID, floorID: floorID, regionID: regionID, mapID: mapID)) { result in
                                completion(result)
                            }
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
                        public func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, sectorID: Int, _ completion: @escaping RequestCallback<Sector>) {
                            _ = self.client.send(request: GetSectorInMapInRegionInFloorInContinent(continentID: continentID, floorID: floorID, regionID: regionID, mapID: mapID, sectorID: sectorID)) { result in
                                completion(result)
                            }
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
                        public func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, sectorIDs: [Int], _ completion: @escaping RequestCallback<[Sector]>) {
                            _ = self.client.send(request: GetSectorsInMapInRegionInFloorInContinent(continentID: continentID, floorID: floorID, regionID: regionID, mapID: mapID, sectorIDs: sectorIDs)) { result in
                                completion(result)
                            }
                        }
                    }
                    
                    /// The point of interest endpoint client: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/pois
                    public class POIClient : Client {
                        /// Returns a list of all point of interest ids within the given map within the given region within the given floor within the given continent
                        ///
                        /// - Parameters:
                        ///   - continentID: The ID of the continent you are searching in
                        ///   - floorID: The ID of the floor within the continent you are searching in
                        ///   - regionID: The ID of the region within the floor within the continent you are searching in
                        ///   - mapID: The ID of the map within the region within the floor within the continent you are searching in
                        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
                        public func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, _ completion: @escaping RequestCallback<[Int]>) {
                            _ = self.client.send(request: GetPOIIDsInMapInRegionInFloorInContinent(continentID: continentID, floorID: floorID, regionID: regionID, mapID: mapID)) { result in
                                completion(result)
                            }
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
                        public func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, poiID: Int, _ completion: @escaping RequestCallback<POI>) {
                            _ = self.client.send(request: GetPOIInMapInRegionInFloorInContinent(continentID: continentID, floorID: floorID, regionID: regionID, mapID: mapID, poiID: poiID)) { result in
                                completion(result)
                            }
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
                        public func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, poiIDs: [Int], _ completion: @escaping RequestCallback<[POI]>) {
                            _ = self.client.send(request: GetPOIsInMapInRegionInFloorInContinent(continentID: continentID, floorID: floorID, regionID: regionID, mapID: mapID, poiIDs: poiIDs)) { result in
                                completion(result)
                            }
                        }
                    }
                    
                    /// The task endpoint client: api.guildwars2.com/v2/continents/<continent_id>/floors/<floor_id>/regions/<region_id>/maps/<map_id>/tasks
                    public class TasksClient : Client {
                        /// Returns a list of all task ids within the given map within the given region within the given floor within the given continent
                        ///
                        /// - Parameters:
                        ///   - continentID: The ID of the continent you are searching in
                        ///   - floorID: The ID of the floor within the continent you are searching in
                        ///   - regionID: The ID of the region within the floor within the continent you are searching in
                        ///   - mapID: The ID of the map within the region within the floor within the continent you are searching in
                        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
                        public func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, _ completion: @escaping RequestCallback<[Int]>) {
                            _ = self.client.send(request: GetTaskIDsInMapInRegionInFloorInContinent(continentID: continentID, floorID: floorID, regionID: regionID, mapID: mapID)) { result in
                                completion(result)
                            }
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
                        public func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, taskID: Int, _ completion: @escaping RequestCallback<Task>) {
                            _ = self.client.send(request: GetTaskInMapInRegionInFloorInContinent(continentID: continentID, floorID: floorID, regionID: regionID, mapID: mapID, taskID: taskID)) { result in
                                completion(result)
                            }
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
                        public func get(continentID: Int, floorID: Int, regionID: Int, mapID: Int, taskIDs: [Int], _ completion: @escaping RequestCallback<[Task]>) {
                            _ = self.client.send(request: GetTasksInMapInRegionInFloorInContinent(continentID: continentID, floorID: floorID, regionID: regionID, mapID: mapID, taskIDs: taskIDs)) { result in
                                completion(result)
                            }
                        }
                    }
                }
            }
        }
    }
    
    /// The maps endpoint client: api.guildwars2.com/v2/maps
    public class MapsClient : Client {
        
        /// Returns a list of all simple map ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            _ = self.client.send(request: GetSimpleMapIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the specified simple map
        ///
        /// - Parameters:
        ///   - mapID: The ID of the map corresponding to the given id
        ///   - completion: Callback function to handle the data returned from the API (Result<Map?, APIError>)
        public func get(mapID: Int, _ completion: @escaping RequestCallback<Map>) {
            _ = self.client.send(request: GetSimpleMap(id: mapID)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more simple maps corresponding to the given ids
        ///
        /// - Parameters:
        ///   - mapIDs: The ID(s) of the map(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Map]?, APIError>)
        public func get(mapIDs: [Int], _ completion: @escaping RequestCallback<[Map]>) {
            _ = self.client.send(request: GetSimpleMaps(ids: mapIDs)) { result in
                completion(result)
            }
        }
    }
}
