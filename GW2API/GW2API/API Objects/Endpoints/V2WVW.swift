//
//  V2WVW.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class V2WVW: APIV2Object {
    public let abilities = V2WVWAbilities(type: "wvw/abilities")
    public let matches = V2WVWMatches(type: "wvw/matches")
    public let objectives = V2WVWObjectives(type: "wvw/objectives")
    public let ranks = V2WVWRanks(type: "wvw/ranks")
    public let upgrades = V2WVWUpgrades(type: "wvw/upgrades")
    
    public class V2WVWAbilities: APIV2Object {
        
    }
    
    public class V2WVWMatches: APIV2Object {
        
    }
    
    public class V2WVWObjectives: APIV2Object {
        
    }
    
    public class V2WVWRanks: APIV2Object {
        
    }
    
    public class V2WVWUpgrades: APIV2Object {
        
    }
}
