//
//  Skin.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//skins
//lang, id, ids
public struct Skin : Decodable {
    public let id: Int
    public let name: String
    public let type: String
    public let flags: [String]
    public let restrictions: [String]
    public let icon: String
    public let rarity: String
    public let description: String?
    public let details: SkinDetails?
    
    public struct SkinDetails : Decodable {
        public let type: String
        
        //Armor
        public let weight_class: String?
        public let dye_slots: DyeSlots?
        
        public struct DyeSlots : Decodable {
            public let `default`: [`default`?]
            public let overrides: Overrides
            
            public struct `default` : Decodable {
                public let color_id: Int
                public let material: String
            }
            
            public struct Overrides : Decodable {
                public let AsuraMale: `default`?
                public let AsuraFemale: `default`?
                public let CharrMale: `default`?
                public let CharrFemale: `default`?
                public let HumanMale: `default`?
                public let HumanFemale: `default`?
                public let NornMale: `default`?
                public let NornFemale: `default`?
                public let SylvariMale: `default`?
                public let SylvariFemale: `default`?
            }
        }
        //Weapons
        public let damage_type: String?
    }

}
