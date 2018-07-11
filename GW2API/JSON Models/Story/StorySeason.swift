//
//  StorySeason.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//stories/seasons
//lang, page, page_size, id, ids
struct StorySeason : Decodable {
    let id: String
    let name: String
    let order: Int
    let stories: [Int]
}
