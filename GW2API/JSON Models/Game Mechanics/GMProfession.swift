//
//  GMProfession.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//professions
//lang, page, page_size, id, ids
struct GMProfession: Decodable {
    let id: String
    let name: String
    let icon: String
    let icon_big: String
    let specializations: [Int]
    let training: [TrainingDetails]
    let weapons: [String:ProfessionWeapon]
    
    struct TrainingDetails: Decodable {
        let id: Int
        let category: String
        let name: String
        let track: [TrainingTrack]
        
        struct TrainingTrack: Decodable {
            let cost: Int
            let type: String
            let skill_id: Int?
            let trait_id: Int?
        }
    }
    
    struct ProfessionWeapon: Decodable {
        let specialization: Int?
        let skills: [WeaponSkill]
        let flags: [String]
        
        struct WeaponSkill: Decodable {
            let id: Int
            let slot: String
            let offhand: String?
            let attunement: String?
            let source: String?
        }
    }
}
