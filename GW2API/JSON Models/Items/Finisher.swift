//
//  Finisher.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//finishers
//lang, page, page_size, id, ids
struct Finisher : Decodable {
    let id: Int
    let unlock_details: String
    let unlock_items: [Int]?
    let order: Int
    let icon: String
    let name: String
}
