//
//  GMSpecialization.swift
//  GW2API
//
//  Created by Zhendryk on 7/6/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//specializations
//lang, id, ids
public struct GMSpecialization : Decodable {
    let id: Int
    let name: String
    let profession: String
    let elite: Bool
    let icon: String
    let background: String
    let minor_traits: [Int]
    let major_traits: [Int]
}
