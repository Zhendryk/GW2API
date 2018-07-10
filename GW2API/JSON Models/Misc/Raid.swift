//
//  Raid.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct Raid : Decodable {
    let id: String
    let wings: [raidWing]
    
    struct raidWing : Decodable {
        let id: String
        let events: [raidEvent]
        
        struct raidEvent : Decodable {
            let id: String
            let type: String
        }
    }
}
