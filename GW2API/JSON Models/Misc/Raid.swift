//
//  Raid.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//raids
//lang, id, ids
struct Raid : Decodable {
    let id: String
    let wings: [RaidWing]
    
    struct RaidWing : Decodable {
        let id: String
        let events: [RaidEvent]
        
        struct RaidEvent : Decodable {
            let id: String
            let type: String
        }
    }
}
