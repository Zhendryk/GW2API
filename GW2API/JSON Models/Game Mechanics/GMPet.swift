//
//  GMPet.swift
//  GW2API
//
//  Created by Zhendryk on 4/21/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//pets
//
public struct GMPet: Decodable {
    let id: Int
    let name: String
    let description: String
    let icon: String
    let skills: [PetSkill]
    
    public struct PetSkill: Decodable {
        let id: Int
    }
}
