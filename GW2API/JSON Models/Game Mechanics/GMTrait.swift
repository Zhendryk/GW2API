//
//  GMTrait.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/6/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct GMTrait : Decodable {
    let id: Int
    let name: String
    let icon: String
    let description: String
    let specialization: Int
    let tier: Int
    let slot: String
    let facts: [tfact]?
    let traited_facts: [ttraitedfact]?
    let skills: [tskill]?
}

struct tfact : Decodable {
    let text: String?
    let icon: String?
    let type: String
}

struct ttraitedfact : Decodable {
    let text: String?
    let icon: String?
    let type: String
    let requires_trait: Int
    let overrides: Int?
}

struct tskill : Decodable {
    let id: Int
    let name: String
    let description: String
    let icon: String
    let facts: [tfact]?
    let traited_facts: [ttraitedfact]?
}
