//
//  GuildClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import APIClient

/// The guild endpoint client: api.guildwars2.com/v2/guild...
public class GuildClient : Client {
    
    /// The guild id endpoint: information about core details of a given guild
    public let id: GuildIDClient = GuildIDClient()
    
    /// The guild emblem endpoint: image resources needed to render guild emblems
    public let emblem: GuildEmblemClient = GuildEmblemClient()
    
    /// The guild permissions endpoint: information about guild rank permissions
    public let permissions: GuildPermissionsClient = GuildPermissionsClient()
    
    /// The guild upgrades endpoint: information about guild upgrades and scribe decorations
    public let upgrades: GuildUpgradesClient = GuildUpgradesClient()
    
    /// The authenticated guild endpoints: accesses guild-specific data and requires an API key from the guild leader to view
    public let authenticated: GuildAuthenticatedClient = GuildAuthenticatedClient()
    
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
    
    /// Sets the language for every sub endpoint
    ///
    /// - Parameter language: The language to set
    override func setLanguage(_ language: String) {
        self.lang = language
        self.permissions.setLanguage(language)
        self.upgrades.setLanguage(language)
    }
    
    /// Returns the ID of the given guild, if it exists
    ///
    /// - Parameters:
    ///   - guildName: The name of the guild you are searching for
    ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [String]), APIError>)
    public func search(guildName: String, _ completion: @escaping APIRequestCallback<[String]>) {
        self.client.send(request: SearchGuild(name: guildName), completion: { result in
            completion(result)
        })
    }
    
    /// The guild id endpoint client: api.guildwars2.com/v2/guild/:id
    public class GuildIDClient: Client {
        
        /// Returns the details of the guild with the associated ID (guild ID must be set using GW2Client.instance.guild.setGuildID())
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, GuildDetails), APIError>)
        public func get(id: String, _ completion: @escaping APIRequestCallback<GuildDetails>) {
            self.client.send(request: GetGuildID(id: id), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The guild emblem endpoint client: api.guildwars2.com/v2/guild/emblem/...
    public class GuildEmblemClient : Client {
        
        /// The guild emblem foregrounds endpoint: api.guildwars2.com/v2/guild/emblem/foregrounds
        public let foregrounds: GuildEmblemForegroundsClient = GuildEmblemForegroundsClient()
        
        /// The guild emblem backgounds endpoint: api.guildwars2.com/v2/guild/emblem/backgrounds
        public let backgrounds: GuildEmblemBackgroundClient = GuildEmblemBackgroundClient()
        
        /// The guild emblem foregrounds endpoint client: api.guildwars2.com/guild/emblem/foregrounds
        public class GuildEmblemForegroundsClient : Client {
            
            /// Returns a list of emblem foreground ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [Int]), APIError>)
            public func get(_ completion: @escaping APIRequestCallback<[Int]>) {
                self.client.send(request: GetGuildEmblemForegroundIDs(), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns the emblem foreground associated with the given id
            ///
            /// - Parameters:
            ///   - id: The ID of the foreground
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, GuildEmblem), APIError>)
            public func get(id: Int, _ completion: @escaping APIRequestCallback<GuildEmblem>) {
                self.client.send(request: GetGuildEmblemForeground(id: id), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns the list of emblem foregrounds associated with the given ids
            ///
            /// - Parameters:
            ///   - ids: The ids of the backgrounds "id1, id2, id3... etc"
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [GuildEmblem]), APIError>)
            public func get(ids: [Int], _ completion: @escaping APIRequestCallback<[GuildEmblem]>) {
                self.client.send(request: GetGuildEmblemForegrounds(ids: ids), completion: { result in
                    completion(result)
                })
            }
        }
        
        /// The guild emblem backgrounds endpoint client: api.guildwars2.com/v2/guild/emblem/backgrounds
        public class GuildEmblemBackgroundClient : Client {
            
            /// Returns a list of emblem background ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [Int]), APIError>)
            public func get(_ completion: @escaping APIRequestCallback<[Int]>) {
                self.client.send(request: GetGuildEmblemBackgroundIDs(), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns the emblem background associated with the given id
            ///
            /// - Parameters:
            ///   - id: The ID of the background
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, GuildEmblem), APIError>)
            public func get(id: Int, _ completion: @escaping APIRequestCallback<GuildEmblem>) {
                self.client.send(request: GetGuildEmblemBackground(id: id), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns the list of emblem backgrounds associated with the given ids
            ///
            /// - Parameters:
            ///   - ids: The ids of the backgrounds "id1, id2, id3... etc"
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [GuildEmblem]), APIError>)
            public func get(ids: [Int], _ completion: @escaping APIRequestCallback<[GuildEmblem]>) {
                self.client.send(request: GetGuildEmblemBackgrounds(ids: ids), completion: { result in
                    completion(result)
                })
            }
        }
    }
    
    /// The guild permissions endpoint client: api.guildwars2.com/v2/guild/permissions
    public class GuildPermissionsClient : Client {
        
        /// Returns a list of the different guild permissions available
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [String]), APIError>)
        public func get(_ completion: @escaping APIRequestCallback<[String]>) {
            self.client.send(request: GetGuildPermissionIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns more detailed info on the guild permission associated with the given id
        ///
        /// - Parameters:
        ///   - id: The id of the permission, URLQueryItem(name: "id", value: "permissionID")
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, Permissions), APIError>)
        public func get(id: String, _ completion: @escaping APIRequestCallback<Permissions>) {
            self.client.send(request: GetGuildPermission(id: id, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns more detailed info on multiple guild permissions associated with the given ids
        ///
        /// - Parameters:
        ///   - ids: The ids of the guild permissions "id1, id2, id3... etc"
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [Permissions]), APIError>)
        public func get(ids: [String], _ completion: @escaping APIRequestCallback<[Permissions]>) {
            self.client.send(request: GetGuildPermissions(ids: ids, lang: lang), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The guild upgrades endpoint client: api.guildwars2.com/v2/guild/upgrades
    public class GuildUpgradesClient : Client {
        
        /// Returns the ids of all available guild upgrades
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [Int]), APIError>)
        public func get(_ completion: @escaping APIRequestCallback<[Int]>) {
            self.client.send(request: GetGuildUpgradeIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns more detailed info on the guild upgrade specified by the given id
        ///
        /// - Parameters:
        ///   - id: The id of the guild upgrade
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, GuildUpgrade), APIError>)
        public func get(id: Int, _ completion: @escaping APIRequestCallback<GuildUpgrade>) {
            self.client.send(request: GetGuildUpgrade(id: id, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns more detailed info on multiple guild upgrades specified by the given ids
        ///
        /// - Parameters:
        ///   - ids: The ids of the guild upgrades, URLQueryItem(name: "ids", value: "id1, id2, id3... etc)"
        ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [GuildUpgrade]), APIError>)
        public func get(ids: [Int], _ completion: @escaping APIRequestCallback<[GuildUpgrade]>) {
            self.client.send(request: GetGuildUpgrades(ids: ids, lang: lang), completion: { result in
                completion(result)
            })
        }
    }
    
    
    /// The authenticated guild endpoint client: Requires both a guild ID and a valid API key from that guild leader's account
    public class GuildAuthenticatedClient : Client {
        
        /// The guild log endpoint: information about a guild's event log
        public let log: GuildLogClient = GuildLogClient()
        
        /// The guild members endpoint: information about the members of a guild
        public let members: GuildMembersClient = GuildMembersClient()
        
        /// The guild ranks endpoint: information about the permission ranks of a guild
        public let ranks: GuildRanksClient = GuildRanksClient()
        
        /// The guild stash endpoint: information about the contents of a guild's stash
        public let stash: GuildStashClient = GuildStashClient()
        
        /// The guild treasury endpoint: information about a guild's treasury contents
        public let treasury: GuildTreasuryClient = GuildTreasuryClient()
        
        /// The guild teams endpoint: information about a guild's teams
        public let teams: GuildTeamsClient = GuildTeamsClient()
        
        /// The guild upgrades endpoint: information about a guild's upgrades
        public let upgrades: GuildAuthUpgradesClient = GuildAuthUpgradesClient()
        
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
        public class GuildLogClient : Client {
            
            /// Returns information about certain events in a guild's log. Requires both a guild ID (set from GW2Client.instance.setGuildID()) and a valid API key from the guild leader's account (set from GW2Client.instance.setAPIKey()
            ///
            /// - Parameters:
            ///   - since: Event ID where you would like the log to start from
            ///   - completion: Callback function to handle the data returned from the API (Result<(URLResponse, [GuildLog]), APIError>)
            public func get(since: Int?, _ completion: @escaping APIRequestCallback<[GuildLog]>) {
                self.client.send(request: GetGuildLog(guildID: self.guildID ?? "", since: since, access_token: self.apiKey), completion: { result in
                    completion(result)
                })
            }
        }
        
        /// The guild members endpoint client: api.guildwars2.com/v2/guild/:id/members
        public class GuildMembersClient : Client {
            
            /// Returns information about the members of a specified guild. Requires both a guild ID (set from GW2Client.instance.setGuildID()) and a valid API key from the guild leader's account (set from GW2Client.instance.setAPIKey()
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [GuildMember]), APIError>)
            public func get(_ completion: @escaping APIRequestCallback<[GuildMember]>) {
                self.client.send(request: GetGuildMembers(guildID: self.guildID ?? "", access_token: self.apiKey), completion: { result in
                    completion(result)
                })
            }
        }
        
        /// The guild ranks endpoint client: api.guildwars2.com/v2/guild/:id/ranks
        public class GuildRanksClient : Client {
            
            /// Returns information about the ranks in a specified guild. Requires both a guild ID (set from GW2Client.instance.setGuildID()) and a valid API key from the guild leader's account (set from GW2Client.instance.setAPIKey()
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [GuildRank]), APIError>)
            public func get(_ completion: @escaping APIRequestCallback<[GuildRank]>) {
                self.client.send(request: GetGuildRanks(guildID: self.guildID ?? "", access_token: self.apiKey), completion: { result in
                    completion(result)
                })
            }
        }
        
        /// The guild stash endpoint client: api.guildwars2.com/v2/guild/:id/stash
        public class GuildStashClient : Client {
            
            /// Returns information about the stash of a specified guild. Requires both a guild ID (set from GW2Client.instance.setGuildID()) and a valid API key from the guild leader's account (set from GW2Client.instance.setAPIKey()
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [GuildStash]), APIError>)
            public func get(_ completion: @escaping APIRequestCallback<[GuildStash]>) {
                self.client.send(request: GetGuildStash(guildID: self.guildID ?? "", access_token: self.apiKey), completion: { result in
                    completion(result)
                })
            }
        }
        
        /// The guild treasury endpoint client: api.guildwars2.com/v2/guild/:id/treasury
        public class GuildTreasuryClient : Client {
            
            /// Returns information about the treasury of a specified guild. Requires both a guild ID (set from GW2Client.instance.setGuildID()) and a valid API key from the guild leader's account (set from GW2Client.instance.setAPIKey()
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [GuildTreasury]), APIError>)
            public func get(_ completion: @escaping APIRequestCallback<[GuildTreasury]>) {
                self.client.send(request: GetGuildTreasury(guildID: self.guildID ?? "", access_token: self.apiKey), completion: { result in
                    completion(result)
                })
            }
        }
        
        /// The guild teams endpoint client: api.guildwars2.com/v2/guild/:id/teams
        public class GuildTeamsClient : Client {
            
            /// Returns information about the teams of a specified guild. Requires both a guild ID (set from GW2Client.instance.setGuildID()) and a valid API key from the guild leader's account (set from GW2Client.instance.setAPIKey()
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [GuildTeam]), APIError>)
            public func get(_ completion: @escaping APIRequestCallback<[GuildTeam]>) {
                self.client.send(request: GetGuildTeams(guildID: self.guildID ?? "", access_token: self.apiKey), completion: { result in
                    completion(result)
                })
            }
        }
        
        /// The guild authenticated upgrades endpoint client: api.guildwars2.com/v2/guild/:id/upgrades
        public class GuildAuthUpgradesClient : Client {
            
            /// Returns information about the upgrades of a specified guild (Resolvable against /v2/guil/upgrades). Requires both a guild ID (set from GW2Client.instance.setGuildID()) and a valid API key from the guild leader's account (set from GW2Client.instance.setAPIKey()
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<(URLResponse, [Int]), APIError>)
            public func get(_ completion: @escaping APIRequestCallback<[Int]>) {
                self.client.send(request: GetMyGuildUpgrades(guildID: self.guildID ?? "", access_token: self.apiKey), completion: { result in
                    completion(result)
                })
            }
        }
    }
}
