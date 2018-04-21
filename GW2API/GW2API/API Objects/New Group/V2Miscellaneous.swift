//
//  V2Miscellaneous.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class V2Misc {
    let build = V2Build(type: "build")
    let colors = V2Colors(type: "colors")
    let currencies = V2Currencies(type: "currencies")
    let dungeons = V2Dungeons(type: "dungeons")
    let files = V2Files(type: "files")
    let quaggans = V2Quaggans(type: "quaggans")
    let minis = V2Minis(type: "minis")
    let raids = V2Raids(type: "raids")
    let titles = V2Titles(type: "titles")
    let worlds = V2Worlds(type: "worlds")
    
    class V2Build: APIV2Object {
        func get() -> Build? {
            do {
                let json: Build? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2Colors: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs:[String:String]) -> [Colors]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: Colors = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    let json: [Colors]? = try super.getKWArr(kwargs: kwargs)
                    return json
                }
                return nil
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2Currencies: APIV2Object {
        
    }
    
    class V2Dungeons: APIV2Object {
        
    }
    
    class V2Files: APIV2Object {
        
    }
    
    class V2Quaggans: APIV2Object {
        
    }
    
    class V2Minis: APIV2Object {
        
    }
    
    class V2Raids: APIV2Object {
        
    }
    
    class V2Titles: APIV2Object {
        
    }
    
    class V2Worlds: APIV2Object {
        
    }
}
