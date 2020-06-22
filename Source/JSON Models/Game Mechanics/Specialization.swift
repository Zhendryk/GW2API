//
//  GMSpecialization.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/6/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//specializations
//lang, id, ids
public struct Specialization : Decodable {
    public let id: Int
    public let name: String
    public let profession: String
    public let elite: Bool
    public let icon: String
    public let background: String
    public let minor_traits: [Int]
    public let major_traits: [Int]
}
