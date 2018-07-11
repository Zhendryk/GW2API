//
//  GMSpecialization.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/6/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//specializations
//lang, id, ids
struct GMSpecialization : Decodable {
    let id: Int
    let name: String
    let profession: String
    let elite: Bool
    let icon: String
    let background: String
    let minor_traits: [Int]
    let major_traits: [Int]
}
