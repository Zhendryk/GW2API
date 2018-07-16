//
//  GMPet.swift
//  GW2API
//
//  Created by Zhendryk on 4/21/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//pets
//
struct GMPet: Decodable {
    let id: Int
    let name: String
    let description: String
    let icon: String
    let skills: [PetSkill]
    
    struct PetSkill: Decodable {
        let id: Int
    }
}
