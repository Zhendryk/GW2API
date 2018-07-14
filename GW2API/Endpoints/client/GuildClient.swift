//
//  GuildClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

/// The guild endpoint client: api.guildwars2.com/v2/guild...
class GuildClient : Client {
    
    /// The guild id endpoint: information about core details of a given guild
    let id: GuildIDClient = GuildIDClient()
    
    /// The guild emblem endpoint: image resources needed to render guild emblems
    let emblem: GuildEmblemClient = GuildEmblemClient()
    
    /// The guild permissions endpoint: information about guild rank permissions
    let permissions: GuildPermissionsClient = GuildPermissionsClient()
    
    /// The guild upgrades endpoint: information about guild upgrades and scribe decorations
    let upgrades: GuildUpgradesClient = GuildUpgradesClient()
    
    /// The authenticated guild endpoints: accesses guild-specific data and requires an API key from the guild leader to view
    let authenticated: GuildAuthenticatedClient = GuildAuthenticatedClient()
    
    /// Sets the API key for the guild authenticated endpoints
    ///
    /// - Parameter key: A valid API key of the guild leader's account
    override func setAPIKey(_ key: String) {
        self.authenticated.setAPIKey(key)
    }
    
    /// Sets the guild ID to the given string
    ///
    /// - Parameter id: The ID to set it to, you can find a guild ID by using the GW2Client.instance.guild.search function
    override func setGuildID(_ id: String) {
        self.id.setGuildID(id)
        self.authenticated.setGuildID(id)
    }
    
    /// Returns the ID of the given guild, if it exists
    ///
    /// - Parameters:
    ///   - guildName: The name of the guild you are searching for
    ///   - completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
    func search(guildName: String, completion: @escaping (Result<[String]?, APIError>) -> Void) {
        fetchAsync(with: EGuild.search.request, parameters: [URLQueryItem(name: "name", value: guildName)], decode: { json -> [String]? in
            guard let res = json as? [String] else { return nil }
            return res
        }, completion: completion)
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
            func get(id: Int, completion: @escaping (Result<GuildEmblem?, APIError>) -> Void) {
                fetchAsync(with: EGuild.foregrounds.idRequest(id: String(id)), decode: { json -> GuildEmblem? in
                    guard let res = json as? GuildEmblem else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the list of emblem foregrounds associated with the given ids
            ///
            /// - Parameters:
            ///   - ids: The ids of the backgrounds "id1, id2, id3... etc"
            ///   - completion: Callback function to handle the data returned from the API (Result<[GuildEmblem]?, APIError>)
            func get(ids: [Int], completion: @escaping (Result<[GuildEmblem]?, APIError>) -> Void) {
                fetchAsync(with: EGuild.foregrounds.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [GuildEmblem]? in
                    guard let res = json as? [GuildEmblem] else { return nil }
                    return res
                }, completion: completion)
            }
        }
        
        /// The guild emblem backgrounds endpoint client: api.guildwars2.com/v2/guild/emblem/backgrounds
        class GuildEmblemBackgroundClient : Client {
            
            /// Returns a list of emblem background ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
            func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
                fetchAsync(with: EGuild.backgrounds.request, decode: { json -> [Int]? in
                    guard let result = json as? [Int] else { return nil }
                    return result
                }, completion: completion)
            }
            
            /// Returns the emblem background associated with the given id
            ///
            /// - Parameters:
            ///   - id: The ID of the background
            ///   - completion: Callback function to handle the data returned from the API (Result<GuildEmblem?, APIError>)
            func get(id: Int, completion: @escaping (Result<GuildEmblem?, APIError>) -> Void) {
                fetchAsync(with: EGuild.backgrounds.idRequest(id: String(id)), decode: { json -> GuildEmblem? in
                    guard let res = json as? GuildEmblem else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the list of emblem backgrounds associated with the given ids
            ///
            /// - Parameters:
            ///   - ids: The ids of the backgrounds "id1, id2, id3... etc"
            ///   - completion: Callback function to handle the data returned from the API (Result<[GuildEmblem]?, APIError>)
            func get(ids: [Int], completion: @escaping (Result<[GuildEmblem]?, APIError>) -> Void) {
                fetchAsync(with: EGuild.backgrounds.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [GuildEmblem]? in
                    guard let res = json as? [GuildEmblem] else { return nil }
                    return res
                }, completion: completion)
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
            fetchAsync(with: EGuild.permissions.idRequest(id: String(id)), decode: { json -> Permissions? in
                guard let res = json as? Permissions else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns more detailed info on multiple guild permissions associated with the given ids
        ///
        /// - Parameters:
        ///   - ids: The ids of the guild permissions "id1, id2, id3... etc"
        ///   - completion: Callback function to handle the data returned from the API (Result<[Permissions]?, APIError>)
        func get(ids: [String], completion: @escaping (Result<[Permissions]?, APIError>) -> Void) {
            fetchAsync(with: EGuild.permissions.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.strArrToList(ids))], decode: { json -> [Permissions]? in
                guard let res = json as? [Permissions] else { return nil }
                return res
            }, completion: completion)
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
        func get(id: Int, completion: @escaping (Result<GuildUpgrade?, APIError>) -> Void) {
            fetchAsync(with: EGuild.upgrades.idRequest(id: String(id)), decode: { json -> GuildUpgrade? in
                guard let res = json as? GuildUpgrade else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns more detailed info on multiple guild upgrades specified by the given ids
        ///
        /// - Parameters:
        ///   - ids: The ids of the guild upgrades, URLQueryItem(name: "ids", value: "id1, id2, id3... etc)"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GuildUpgrade]?, APIError>)
        func get(ids: [Int], completion: @escaping (Result<[GuildUpgrade]?, APIError>) -> Void) {
            fetchAsync(with: EGuild.upgrades.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [GuildUpgrade]? in
                guard let res = json as? [GuildUpgrade] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    
    /// The authenticated guild endpoint client: Requires both a guild ID and a valid API key from that guild leader's account
    class GuildAuthenticatedClient : Client {
        
        /// The guild log endpoint: information about a guild's event log
        let log: GuildLogClient = GuildLogClient()
        
        /// The guild members endpoint: information about the members of a guild
        let members: GuildMembersClient = GuildMembersClient()
        
        /// The guild ranks endpoint: information about the permission ranks of a guild
        let ranks: GuildRanksClient = GuildRanksClient()
        
        /// The guild stash endpoint: information about the contents of a guild's stash
        let stash: GuildStashClient = GuildStashClient()
        
        /// The guild treasury endpoint: information about a guild's treasury contents
        let treasury: GuildTreasuryClient = GuildTreasuryClient()
        
        /// The guild teams endpoint: information about a guild's teams
        let teams: GuildTeamsClient = GuildTeamsClient()
        
        /// The guild upgrades endpoint: information about a guild's upgrades
        let upgrades: GuildAuthUpgradesClient = GuildAuthUpgradesClient()
        
        /// Sets the API key to all authenticated guild endpoints
        ///
        /// - Parameter key: A valid API key of the guild leader's account
        override func setAPIKey(_ key: String) {
            self.log.setAPIKey(key)
            self.members.setAPIKey(key)
            self.ranks.setAPIKey(key)
            self.stash.setAPIKey(key)
            self.treasury.setAPIKey(key)
            self.teams.setAPIKey(key)
            self.upgrades.setAPIKey(key)
        }
        
        /// Sets the guild ID for all authenticated guild endpoints
        ///
        /// - Parameter id: The ID of the guild being queried
        override func setGuildID(_ id: String) {
            self.log.setGuildID(id)
            self.members.setGuildID(id)
            self.ranks.setGuildID(id)
            self.stash.setGuildID(id)
            self.treasury.setGuildID(id)
            self.teams.setGuildID(id)
            self.upgrades.setGuildID(id)
        }
        
        /// The guild log endpoint client: api.guildwars2.com/v2/guild/:id/log
        class GuildLogClient : Client {
            
            /// Returns information about certain events in a guild's log. Requires both a guild ID (set from GW2Client.instance.setGuildID()) and a valid API key from the guild leader's account (set from GW2Client.instance.setAPIKey()
            ///
            /// - Parameters:
            ///   - since: Event ID where you would like the log to start from
            ///   - completion: Callback function to handle the data returned from the API (Result<[GuildLog]?, APIError>)
            func get(since: Int = -1, completion: @escaping (Result<[GuildLog]?, APIError>) -> Void) {
                if since != -1 {
                    fetchAsync(with: EGuild.log.request, needsAuthorization: true, needsGuildID: true, parameters: [URLQueryItem(name: "since", value: String(since))], decode: { json -> [GuildLog]? in
                        guard let res = json as? [GuildLog] else { return nil }
                        return res
                    }, completion: completion)
                }
                else {
                    fetchAsync(with: EGuild.log.request, needsAuthorization: true, needsGuildID: true, decode: { json -> [GuildLog]? in
                        guard let result = json as? [GuildLog] else { return nil }
                        return result
                    }, completion: completion)
                }
            }
        }
        
        /// The guild members endpoint client: api.guildwars2.com/v2/guild/:id/members
        class GuildMembersClient : Client {
            
            /// Returns information about the members of a specified guild. Requires both a guild ID (set from GW2Client.instance.setGuildID()) and a valid API key from the guild leader's account (set from GW2Client.instance.setAPIKey()
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[GuildMember]?, APIError>)
            func get(completion: @escaping (Result<[GuildMember]?, APIError>) -> Void) {
                fetchAsync(with: EGuild.members.request, needsAuthorization: true, needsGuildID: true, decode: { json -> [GuildMember]? in
                    guard let result = json as? [GuildMember] else { return nil }
                    return result
                }, completion: completion)
            }
        }
        
        /// The guild ranks endpoint client: api.guildwars2.com/v2/guild/:id/ranks
        class GuildRanksClient : Client {
            
            /// Returns information about the ranks in a specified guild. Requires both a guild ID (set from GW2Client.instance.setGuildID()) and a valid API key from the guild leader's account (set from GW2Client.instance.setAPIKey()
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[GuildRank]?, APIError>)
            func get(completion: @escaping (Result<[GuildRank]?, APIError>) -> Void) {
                fetchAsync(with: EGuild.ranks.request, needsAuthorization: true, needsGuildID: true, decode: { json -> [GuildRank]? in
                    guard let result = json as? [GuildRank] else { return nil }
                    return result
                }, completion: completion)
            }
        }
        
        /// The guild stash endpoint client: api.guildwars2.com/v2/guild/:id/stash
        class GuildStashClient : Client {
            
            /// Returns information about the stash of a specified guild. Requires both a guild ID (set from GW2Client.instance.setGuildID()) and a valid API key from the guild leader's account (set from GW2Client.instance.setAPIKey()
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[GuildStash]?, APIError>)
            func get(completion: @escaping (Result<[GuildStash]?, APIError>) -> Void) {
                fetchAsync(with: EGuild.stash.request, needsAuthorization: true, needsGuildID: true, decode: { json -> [GuildStash]? in
                    guard let result = json as? [GuildStash] else { return nil }
                    return result
                }, completion: completion)
            }
        }
        
        /// The guild treasury endpoint client: api.guildwars2.com/v2/guild/:id/treasury
        class GuildTreasuryClient : Client {
            
            /// Returns information about the treasury of a specified guild. Requires both a guild ID (set from GW2Client.instance.setGuildID()) and a valid API key from the guild leader's account (set from GW2Client.instance.setAPIKey()
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[GuildTreasury]?, APIError>)
            func get(completion: @escaping (Result<[GuildTreasury]?, APIError>) -> Void) {
                fetchAsync(with: EGuild.treasury.request, needsAuthorization: true, needsGuildID: true, decode: { json -> [GuildTreasury]? in
                    guard let result = json as? [GuildTreasury] else { return nil }
                    return result
                }, completion: completion)
            }
        }
        
        /// The guild teams endpoint client: api.guildwars2.com/v2/guild/:id/teams
        class GuildTeamsClient : Client {
            
            /// Returns information about the teams of a specified guild. Requires both a guild ID (set from GW2Client.instance.setGuildID()) and a valid API key from the guild leader's account (set from GW2Client.instance.setAPIKey()
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[GuildTeam]?, APIError>)
            func get(completion: @escaping (Result<[GuildTeam]?, APIError>) -> Void) {
                fetchAsync(with: EGuild.teams.request, needsAuthorization: true, needsGuildID: true, decode: { json -> [GuildTeam]? in
                    guard let result = json as? [GuildTeam] else { return nil }
                    return result
                }, completion: completion)
            }
        }
        
        /// The guild authenticated upgrades endpoint client: api.guildwars2.com/v2/guild/:id/upgrades
        class GuildAuthUpgradesClient : Client {
            
            /// Returns information about the upgrades of a specified guild (Resolvable against /v2/guil/upgrades). Requires both a guild ID (set from GW2Client.instance.setGuildID()) and a valid API key from the guild leader's account (set from GW2Client.instance.setAPIKey()
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
            func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
                fetchAsync(with: EGuild.authUpgrades.request, needsAuthorization: true, needsGuildID: true, decode: { json -> [Int]? in
                    guard let result = json as? [Int] else { return nil }
                    return result
                }, completion: completion)
            }
        }
    }
}
