//
//  V2WVW.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class V2WVW: APIV2Object {
    let abilities = V2WVWAbilities(type: "wvw/abilities")
    let matches = V2WVWMatches(type: "wvw/matches")
    let objectives = V2WVWObjectives(type: "wvw/objectives")
    let ranks = V2WVWRanks(type: "wvw/ranks")
    let upgrades = V2WVWUpgrades(type: "wvw/upgrades")
    
    class V2WVWAbilities: APIV2Object {
        
    }
    
    class V2WVWMatches: APIV2Object {
        
    }
    
    class V2WVWObjectives: APIV2Object {
        
    }
    
    class V2WVWRanks: APIV2Object {
        
    }
    
    class V2WVWUpgrades: APIV2Object {
        
    }
}
