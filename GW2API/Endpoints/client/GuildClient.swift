//
//  GuildClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

/// The guild endpoint client: api.guildwars2.com/v2/guild...
class GuildClient : Client {
    
    /// The guild id endpoint: api.guildwars2.com/v2/guild/:id
    let id: GuildIDClient = GuildIDClient()
    
    /// The guild emblem endpoint: api.guildwars2.comm/v2/guild/emblem/...
    let emblem: GuildEmblemClient = GuildEmblemClient()
    
    /// The guild permissions endpoint: api.guildwars2.com/v2/guild/permissions
    let permissions: GuildPermissionsClient = GuildPermissionsClient()
    
    /// The guild upgrades endpoint: api.guildwars2.com/v2/guild/upgrades
    let upgrades: GuildUpgradesClient = GuildUpgradesClient()
    
    
    /// Sets the guild ID to the given string
    ///
    /// - Parameter id: The ID to set it to, you can find a guild ID by using the GW2Client.instance.guild.search function
    override func setGuildID(_ id: String) {
        self.id.setGuildID(id)
    }
    
    /// Returns the ID of the given guild, if it exists
    ///
    /// - Parameters:
    ///   - guildName: The name of the guild you are searching for
    ///   - completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
    func search(guildName: String, completion: @escaping (Result<[String]?, APIError>) -> Void) {
        let request = addQueryParameters(to: EGuild.search.request, parameters: [URLQueryItem(name: "name", value: guildName)])
        switch request {
        case .success(let query):
            fetchAsync(with: query, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        case .failure(let error):
            print(error.localizedDescription)
            return
        }
    }
    
    /// The guild id endpoint client: api.guildwars2.com/v2/guild/:id
    class GuildIDClient: Client {
        
        /// Returns the details of the guild with the associated ID (guild ID must be set using GW2Client.instance.guild.setGuildID())
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<GuildDetails?, APIError>)
        func get(completion: @escaping (Result<GuildDetails?, APIError>) -> Void) {
            fetchAsync(with: EGuild.id.request, needsGuildID: true, decode: { json -> GuildDetails? in
                guard let result = json as? GuildDetails else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    /// The guild emblem endpoint client: api.guildwars2.com/v2/guild/emblem/...
    class GuildEmblemClient : Client {
        
        /// The guild emblem foregrounds endpoint: api.guildwars2.com/v2/guild/emblem/foregrounds
        let foregrounds: GuildEmblemForegroundsClient = GuildEmblemForegroundsClient()
        
        /// The guild emblem backgounds endpoint: api.guildwars2.com/v2/guild/emblem/backgrounds
        let backgrounds: GuildEmblemBackgroundClient = GuildEmblemBackgroundClient()
        
        /// The guild emblem foregrounds endpoint client: api.guildwars2.com/guild/emblem/foregrounds
        class GuildEmblemForegroundsClient : Client {
            
            /// Returns a list of emblem foreground ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
            func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
                fetchAsync(with: EGuild.foregrounds.request, decode: { json -> [Int]? in
                    guard let result = json as? [Int] else { return nil }
                    return result
                }, completion: completion)
            }
            
            /// Returns the emblem foreground associated with the given id
            ///
            /// - Parameters:
            ///   - id: The ID of the foreground
            ///   - completion: Callback function to handle the data returned from the API (Result<GuildEmblem?, APIError>)
            func get(id: String, completion: @escaping (Result<GuildEmblem?, APIError>) -> Void) {
                let idItem = URLQueryItem(name: "id", value: id)
                let request = addQueryParameters(to: EGuild.foregrounds.request, parameters: [idItem])
                switch request {
                case .success(let query):
                    fetchAsync(with: query, decode: { json -> GuildEmblem? in
                        guard let result = json as? GuildEmblem else { return nil }
                        return result
                    }, completion: completion)
                case .failure(let error):
                    print(error.localizedDescription)
                    return
                }
            }
            
            /// Returns the list of emblem foregrounds associated with the given ids
            ///
            /// - Parameters:
            ///   - ids: The ids of the backgrounds "id1, id2, id3... etc"
            ///   - completion: Callback function to handle the data returned from the API (Result<[GuildEmblem]?, APIError>)
            func get(ids: String, completion: @escaping (Result<[GuildEmblem]?, APIError>) -> Void) {
                let idsItem = URLQueryItem(name: "ids", value: ids)
                let request = addQueryParameters(to: EGuild.foregrounds.request, parameters: [idsItem])
                switch request {
                case .success(let query):
                    fetchAsync(with: query, decode: { json -> [GuildEmblem]? in
                        guard let result = json as? [GuildEmblem] else { return nil }
                        return result
                    }, completion: completion)
                case .failure(let error):
                    print(error.localizedDescription)
                    return
                }
            }
        }
        
        /// The guild emblem backgrounds endpoint client: api.guildwars2.com/v2/guild/emblem/backgrounds
        class GuildEmblemBackgroundClient : Client {
            
            /// Returns a list of emblem foreground ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
            func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
                fetchAsync(with: EGuild.foregrounds.request, decode: { json -> [Int]? in
                    guard let result = json as? [Int] else { return nil }
                    return result
                }, completion: completion)
            }
            
            /// Returns the emblem background associated with the given id
            ///
            /// - Parameters:
            ///   - id: The ID of the background
            ///   - completion: Callback function to handle the data returned from the API (Result<GuildEmblem?, APIError>)
            func get(id: String, completion: @escaping (Result<GuildEmblem?, APIError>) -> Void) {
                let idItem = URLQueryItem(name: "id", value: id)
                let request = addQueryParameters(to: EGuild.foregrounds.request, parameters: [idItem])
                switch request {
                case .success(let query):
                    fetchAsync(with: query, decode: { json -> GuildEmblem? in
                        guard let result = json as? GuildEmblem else { return nil }
                        return result
                    }, completion: completion)
                case .failure(let error):
                    print(error.localizedDescription)
                    return
                }
            }
            
            /// Returns the list of emblem backgrounds associated with the given ids
            ///
            /// - Parameters:
            ///   - ids: The ids of the backgrounds "id1, id2, id3... etc"
            ///   - completion: Callback function to handle the data returned from the API (Result<[GuildEmblem]?, APIError>)
            func get(ids: String, completion: @escaping (Result<[GuildEmblem]?, APIError>) -> Void) {
                let idsItem = URLQueryItem(name: "ids", value: ids)
                let request = addQueryParameters(to: EGuild.foregrounds.request, parameters: [idsItem])
                switch request {
                case .success(let query):
                    fetchAsync(with: query, decode: { json -> [GuildEmblem]? in
                        guard let result = json as? [GuildEmblem] else { return nil }
                        return result
                    }, completion: completion)
                case .failure(let error):
                    print(error.localizedDescription)
                    return
                }
            }
        }
    }
    
    /// The guild permissions endpoint client: api.guildwars2.com/v2/guild/permissions
    class GuildPermissionsClient : Client {
        
        /// Returns a list of the different guild permissions available
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: EGuild.permissions.request, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }
        
        /// Returns more detailed info on the guild permission associated with the given id
        ///
        /// - Parameters:
        ///   - id: The id of the permission, URLQueryItem(name: "id", value: "permissionID")
        ///   - completion: Callback function to handle the data returned from the API (Result<Permissions?, APIError>)
        func get(id: String, completion: @escaping (Result<Permissions?, APIError>) -> Void) {
            let idItem = URLQueryItem(name: "id", value: id)
            let request = addQueryParameters(to: EGuild.permissions.request, parameters: [idItem])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: {json -> Permissions? in
                    guard let res = json as? Permissions else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error.localizedDescription)
                return
            }
        }
        
        /// Returns more detailed info on multiple guild permissions associated with the given ids
        ///
        /// - Parameters:
        ///   - ids: The ids of the guild permissions "id1, id2, id3... etc"
        ///   - completion: Callback function to handle the data returned from the API (Result<[Permissions]?, APIError>)
        func get(ids: String, completion: @escaping (Result<[Permissions]?, APIError>) -> Void) {
            let idsItem = URLQueryItem(name: "ids", value: ids)
            let request = addQueryParameters(to: EGuild.permissions.request, parameters: [idsItem])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: {json -> [Permissions]? in
                    guard let res = json as? [Permissions] else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error.localizedDescription)
                return
            }
        }
    }
    
    /// The guild upgrades endpoint client: api.guildwars2.com/v2/guild/upgrades
    class GuildUpgradesClient : Client {
        
        /// Returns the ids of all available guild upgrades
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EGuild.upgrades.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        /// Returns more detailed info on the guild upgrade specified by the given id
        ///
        /// - Parameters:
        ///   - id: The id of the guild upgrade
        ///   - completion: Callback function to handle the data returned from the API (Result<GuildUpgrade?, APIError>)
        func get(id: String, completion: @escaping (Result<GuildUpgrade?, APIError>) -> Void) {
            let idItem = URLQueryItem(name: "id", value: id)
            let request = addQueryParameters(to: EGuild.upgrades.request, parameters: [idItem])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: {json -> GuildUpgrade? in
                    guard let res = json as? GuildUpgrade else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error.localizedDescription)
                return
            }
        }
        
        /// Returns more detailed info on multiple guild upgrades specified by the given ids
        ///
        /// - Parameters:
        ///   - ids: The ids of the guild upgrades, URLQueryItem(name: "ids", value: "id1, id2, id3... etc)"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GuildUpgrade]?, APIError>)
        func get(ids: String, completion: @escaping (Result<[GuildUpgrade]?, APIError>) -> Void) {
            let idsItem = URLQueryItem(name: "ids", value: ids)
            let request = addQueryParameters(to: EGuild.upgrades.request, parameters: [idsItem])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: {json -> [GuildUpgrade]? in
                    guard let res = json as? [GuildUpgrade] else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error.localizedDescription)
                return
            }
        }
    }
}
