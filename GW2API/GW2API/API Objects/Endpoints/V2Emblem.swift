//
//  V2Emblem.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class V2Emblem {
    
    public let foregrounds = V2GuildEmblemForegrounds(type: "emblem/foregrounds")
    public let backgrounds = V2GuildEmblemBackgrounds(type: "emblem/backgrounds")
    
    public class V2GuildEmblemForegrounds: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        public func get(kwargs: [String:String]) -> [GuildEmblem]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: GuildEmblem = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [GuildEmblem] = try super.getArrKW(kwargs: kwargs) {
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
    
    public class V2GuildEmblemBackgrounds: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        public func get(kwargs: [String:String]) -> [GuildEmblem]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: GuildEmblem = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [GuildEmblem] = try super.getArrKW(kwargs: kwargs) {
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
