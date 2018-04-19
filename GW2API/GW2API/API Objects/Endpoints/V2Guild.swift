//
//  V2Guild.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class V2Guild {
    public let authenticated = V2GuildAuthenticated(type: "guild/")
    public let permissions = V2GuildPermissions(type: "guild/permissions")
    public let search = V2GuildSearch(type: "guild/search")
    public let upgrades = V2GuildUpgrades(type: "guild/upgrades")
    
    public class V2GuildAuthenticated: APIV2Object {
        
        public let log = V2GuildLog(type: "guild/log")
        public let members = V2GuildMembers(type: "guild/members")
        public let ranks = V2GuildRanks(type: "guild/ranks")
        public let stash = V2GuildStash(type: "guild/stash")
        public let treasury = V2GuildTreasury(type: "guild/treasury")
        public let teams = V2GuildTeams(type: "guild/teams")
        public let upgrades = V2GuildUG(type: "guild/upgrades")
        
        //Must be called with an ID parameter
        public func get(kwargs: [String:String]) -> GuildDetails? {
            do {
                let json: GuildDetails? = try super.getKW(kwargs: kwargs)
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        //Each of these below needs a single kwarg get so "guild/:id/log etc"
        public class V2GuildLog: APIV2Object {
            public func get(id: String) -> GuildLog? {
                super.addKWToURL(kwargs: [2:id])
                do {
                    let json: GuildLog? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        public class V2GuildMembers: APIV2Object {
            public func get(id: String) -> [GuildMember]? {
                super.addKWToURL(kwargs: [2:id])
                do {
                    let json: [GuildMember]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        public class V2GuildRanks: APIV2Object {
            public func get(id: String) -> [GuildRank]? {
                super.addKWToURL(kwargs: [2:id])
                do {
                    let json: [GuildRank]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        public class V2GuildStash: APIV2Object {
            public func get(id: String) -> [GuildStash]? {
                super.addKWToURL(kwargs: [2:id])
                do {
                    let json: [GuildStash]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        public class V2GuildTreasury: APIV2Object {
            public func get(id: String) -> [GuildTreasury]? {
                super.addKWToURL(kwargs: [2:id])
                do {
                    let json: [GuildTreasury]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        public class V2GuildTeams: APIV2Object {
            public func get(id: String) -> [GuildTeam]? {
                super.addKWToURL(kwargs: [2:id])
                do {
                    let json: [GuildTeam]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        public class V2GuildUG: APIV2Object {
            public func get(id: String) -> [Int]? {
                super.addKWToURL(kwargs: [2:id])
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
    }
    
    public class V2GuildPermissions: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        public func get(kwargs:[String:String]) -> [Permissions]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: Permissions = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [Permissions] = try super.getArrKW(kwargs: kwargs) {
                        return json
                    }
                    return nil
                }
                else {
                    return nil
                }
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2GuildSearch: APIV2Object {
        public func get(name: String) -> String? {
            do {
                let json: String? = try super.getKW(kwargs: ["name":name])
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2GuildUpgrades: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        public func get(kwargs:[String:String]) -> [GuildUpgrade]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: GuildUpgrade = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [GuildUpgrade] = try super.getArrKW(kwargs: kwargs) {
                        return json
                    }
                    return nil
                }
                else {
                    return nil
                }
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
}
