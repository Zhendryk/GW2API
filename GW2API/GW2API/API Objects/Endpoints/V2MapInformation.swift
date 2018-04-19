//
//  V2MapInformation.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class V2MapInformation {
    public let continents = V2Continents(type: "continents")
    public let maps = V2Maps(type: "maps")
    
    public class V2Continents: APIV2Object {
        
    }
    
    public class V2Maps: APIV2Object {
        
    }
}
