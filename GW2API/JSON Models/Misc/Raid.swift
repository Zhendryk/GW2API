//
//  Raid.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//raids
//lang, id, ids
public struct Raid : Decodable {
    public let id: String
    public let wings: [RaidWing]
    
    public struct RaidWing : Decodable {
        public let id: String
        public let events: [RaidEvent]
        
        public struct RaidEvent : Decodable {
            public let id: String
            public let type: String
        }
    }
}
