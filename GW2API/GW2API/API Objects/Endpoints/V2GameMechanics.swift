//
//  V2GameMechanics.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class V2GameMechanics {
    
    public let masteries = V2GMMasteries(type: "masteries")
    public let outfits = V2GMOutfits(type: "outfits")
    public let pets = V2GMPets(type: "pets")
    public let professions = V2GMProfessions(type: "professions")
    public let races = V2GMRaces(type: "races")
    public let specializations = V2GMSpecializations(type: "specializations")
    public let skills = V2GMSkills(type: "skills")
    public let traits = V2GMTraits(type: "traits")
    public let legends = V2GMLegends(type: "legends")
    
    public class V2GMMasteries: APIV2Object {
        
    }
    
    public class V2GMOutfits: APIV2Object {
        
    }
    
    public class V2GMPets: APIV2Object {
        
    }
    
    public class V2GMProfessions: APIV2Object {
        
    }
    
    public class V2GMRaces: APIV2Object {
        
    }
    
    public class V2GMSpecializations: APIV2Object {
        
    }
    
    public class V2GMSkills: APIV2Object {
        
    }
    
    public class V2GMTraits: APIV2Object {
        
    }
    
    public class V2GMLegends: APIV2Object {
        
    }
}
