//
//  V2Misc.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class V2Misc {
    public let build = V2Build(type: "build")
    public let colors = V2Colors(type: "colors")
    public let currencies = V2Currencies(type: "currencies")
    public let dungeons = V2Dungeons(type: "dungeons")
    public let files = V2Files(type: "files")
    public let quaggans = V2Quaggans(type: "quaggans")
    public let minis = V2Minis(type: "minis")
    public let raids = V2Raids(type: "raids")
    public let titles = V2Titles(type: "titles")
    public let worlds = V2Worlds(type: "worlds")
    
    public class V2Build: APIV2Object {
        public func get() -> Build? {
            do {
                let json: Build? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    public class V2Colors: APIV2Object {
        public func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        public func get(kwargs:[String:String]) -> [Colors]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: Colors = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [Colors] = try super.getArrKW(kwargs: kwargs) {
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
    
    public class V2Currencies: APIV2Object {
        
    }
    
    public class V2Dungeons: APIV2Object {
        
    }
    
    public class V2Files: APIV2Object {
        
    }
    
    public class V2Quaggans: APIV2Object {
        
    }
    
    public class V2Minis: APIV2Object {
        
    }
    
    public class V2Raids: APIV2Object {
        
    }
    
    public class V2Titles: APIV2Object {
        
    }
    
    public class V2Worlds: APIV2Object {
        
    }
}
