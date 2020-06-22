//
//  GMPet.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//pets
//
public struct Pet: Decodable {
    public let id: Int
    public let name: String
    public let description: String
    public let icon: String
    public let skills: [PetSkill]
    
    public struct PetSkill: Decodable {
        public let id: Int
    }
}
