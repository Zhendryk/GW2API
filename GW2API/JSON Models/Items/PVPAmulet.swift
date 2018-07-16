//
//  PVPAmulet.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//pvp/amulets
//lang, page, page_size, id, ids
struct PVPAmulet : Decodable {
    let id: Int
    let name: String
    let icon: String
    let attributes: [String:Int]
}
