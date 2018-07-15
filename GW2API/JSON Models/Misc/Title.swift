//
//  Title.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//titles
//lang, page, page_size, id, ids
struct Title : Decodable {
    let id: Int
    let name: String
    let achievement: Int
    let achievements: [Int]
    let ap_required: Int?
}
