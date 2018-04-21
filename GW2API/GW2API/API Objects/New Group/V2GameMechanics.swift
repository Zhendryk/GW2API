//
//  V2GameMechanics.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class V2GameMechanics {
    
    let masteries = V2GMMasteries(type: "masteries")
    let outfits = V2GMOutfits(type: "outfits")
    let pets = V2GMPets(type: "pets")
    let professions = V2GMProfessions(type: "professions")
    let races = V2GMRaces(type: "races")
    let specializations = V2GMSpecializations(type: "specializations")
    let skills = V2GMSkills(type: "skills")
    let traits = V2GMTraits(type: "traits")
    let legends = V2GMLegends(type: "legends")
    
    class V2GMMasteries: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs: [String:String]) -> [GMMasteries]? {
            do {
                let json: [GMMasteries]? = try super.getKWArr(kwargs: kwargs)
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2GMOutfits: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs: [String:String]) -> [GMOutfit]? {
            do {
                let json: [GMOutfit]? = try super.getKWArr(kwargs: kwargs)
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2GMPets: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs: [String:String]) -> [GMPet]? {
            do {
                let json: [GMPet]? = try super.getKWArr(kwargs: kwargs)
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2GMProfessions: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs: [String:String]) -> [GMProfession]? {
            do {
                let json: [GMProfession]? = try super.getKWArr(kwargs: kwargs)
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2GMRaces: APIV2Object {
        func get() -> [String]? {
            do {
                let json: [String]? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs: [String:String]) -> [GMRace]? {
            do {
                let json: [GMRace]? = try super.getKWArr(kwargs: kwargs)
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2GMSpecializations: APIV2Object {
        
    }
    
    class V2GMSkills: APIV2Object {
        
    }
    
    class V2GMTraits: APIV2Object {
        
    }
    
    class V2GMLegends: APIV2Object {
        
    }
}
