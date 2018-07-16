//
//  StorySeason.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//stories/seasons
//lang, page, page_size, id, ids
struct StorySeason : Decodable {
    let id: String
    let name: String
    let order: Int
    let stories: [Int]
}
