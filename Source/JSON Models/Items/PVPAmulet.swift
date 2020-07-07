//
//  PVPAmulet.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//pvp/amulets
//lang, page, page_size, id, ids
public struct PVPAmulet: Decodable, Identifiable {
    public let id: Int
    public let name: String
    public let icon: String
    public let attributes: [String:Int]
}
