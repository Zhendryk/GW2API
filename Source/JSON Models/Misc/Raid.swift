//
//  Raid.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//raids
//lang, id, ids
public struct Raid : Decodable, Identifiable {
    public let id: String
    public let wings: [RaidWing]
    
    public struct RaidWing : Decodable, Identifiable {
        public let id: String
        public let events: [RaidEvent]
        
        public struct RaidEvent : Decodable, Identifiable {
            public let id: String
            public let type: String
        }
    }
}
