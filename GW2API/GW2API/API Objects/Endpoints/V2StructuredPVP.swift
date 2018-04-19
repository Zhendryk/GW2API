//
//  V2StructuredPVP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class V2StructuredPVP: APIV2Object {
    public let ranks = V2PVPRanks(type: "pvp/ranks")
    public let seasons = V2PVPSeasons(type: "pvp/seasons")
    
    public class V2PVPRanks: APIV2Object {
        
    }
    
    public class V2PVPSeasons: APIV2Object {
        public let leaderboards = V2PVPSeasonsLeaderboards(type: "pvp/seasons/leaderboards")
        
        public class V2PVPSeasonsLeaderboards: APIV2Object {
            
        }
    }
}
