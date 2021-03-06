//
//  Minipet.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//minis
//lang, id, ids
public struct Minipet : Decodable, Identifiable {
    public let id: Int
    public let name: String
    public let unlock: String?
    public let icon: String
    public let order: Int
    public let item_id: Int
}
