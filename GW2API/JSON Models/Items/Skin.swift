//
//  Skin.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//skins
//lang, id, ids
struct Skin : Decodable {
    let id: Int
    let name: String
    let type: String
    let flags: [String]
    let restrictions: [String]
    let icon: String
    let rarity: String
    let description: String?
    let details: SkinDetails?
    
    struct SkinDetails : Decodable {
        let type: String
        
        //Armor
        let weight_class: String?
        let dye_slots: DyeSlots?
        
        struct DyeSlots : Decodable {
            let `default`: [`default`?]
            let overrides: Overrides
            
            struct `default` : Decodable {
                let color_id: Int
                let material: String
            }
            
            struct Overrides : Decodable {
                let AsuraMale: `default`?
                let AsuraFemale: `default`?
                let CharrMale: `default`?
                let CharrFemale: `default`?
                let HumanMale: `default`?
                let HumanFemale: `default`?
                let NornMale: `default`?
                let NornFemale: `default`?
                let SylvariMale: `default`?
                let SylvariFemale: `default`?
            }
        }
        //Weapons
        let damage_type: String?
    }

}
