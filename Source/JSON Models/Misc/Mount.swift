//
//  Mount.swift
//  GW2API
//
//  Created by Jonathan Bailey on 1/10/19.
//  Copyright © 2019 Jonathan Bailey. All rights reserved.
//

import Foundation

public struct MountSkin: Decodable, Identifiable {
    public let id: Int
    public let name: String
    public let icon: String
    public let mount: String
    public let dye_slots: [DyeSlot]
    
    public struct DyeSlot: Decodable {
        public let color_id: Int
        public let material: String
    }
}

public struct MountType: Decodable, Identifiable {
    public let id: String
    public let name: String
    public let default_skin: Int
    public let skins: [Int]
    public let skills: [MountSkill]
    
    public struct MountSkill: Decodable, Identifiable {
        public let id: Int
        public let slot: String
    }
}
