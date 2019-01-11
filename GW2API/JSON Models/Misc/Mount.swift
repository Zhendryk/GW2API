//
//  Mount.swift
//  GW2API
//
//  Created by Zhendryk on 1/10/19.
//  Copyright © 2019 Zhendryk. All rights reserved.
//

import Foundation

public struct MountSkin: Decodable {
    let id: Int
    let name: String
    let icon: String
    let mount: String
    let dye_slots: [DyeSlot]
    
    public struct DyeSlot: Decodable {
        let color_id: Int
        let material: String
    }
}

public struct MountType: Decodable {
    let id: String
    let name: String
    let default_skin: Int
    let skins: [Int]
    let skills: [MountSkill]
    
    public struct MountSkill: Decodable {
        let id: Int
        let slot: String
    }
}
