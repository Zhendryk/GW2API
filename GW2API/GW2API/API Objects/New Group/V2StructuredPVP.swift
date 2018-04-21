//
//  V2StructuredPVP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class V2StructuredPVP: APIV2Object {
    let ranks = V2PVPRanks(type: "pvp/ranks")
    let seasons = V2PVPSeasons(type: "pvp/seasons")
    
    class V2PVPRanks: APIV2Object {
        
    }
    
    class V2PVPSeasons: APIV2Object {
        let leaderboards = V2PVPSeasonsLeaderboards(type: "pvp/seasons/leaderboards")
        
        class V2PVPSeasonsLeaderboards: APIV2Object {
            
        }
    }
}
