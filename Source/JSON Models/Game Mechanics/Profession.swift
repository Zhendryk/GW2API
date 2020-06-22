//
//  GMProfession.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//professions
//lang, page, page_size, id, ids
public struct Profession: Decodable {
    public let id: String
    public let name: String
    public let icon: String
    public let icon_big: String
    public let specializations: [Int]
    public let training: [TrainingDetails]
    public let weapons: [String:ProfessionWeapon]
    
    public struct TrainingDetails: Decodable {
        public let id: Int
        public let category: String
        public let name: String
        public let track: [TrainingTrack]
        
        public struct TrainingTrack: Decodable {
            public let cost: Int
            public let type: String
            public let skill_id: Int?
            public let trait_id: Int?
        }
    }
    
    public struct ProfessionWeapon: Decodable {
        public let specialization: Int?
        public let skills: [WeaponSkill]
        public let flags: [String]
        
        public struct WeaponSkill: Decodable {
            public let id: Int
            public let slot: String
            public let offhand: String?
            public let attunement: String?
            public let source: String?
        }
    }
}
