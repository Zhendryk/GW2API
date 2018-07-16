//
//  StorySeason.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//stories/seasons
//lang, page, page_size, id, ids
public struct StorySeason : Decodable {
    public let id: String
    public let name: String
    public let order: Int
    public let stories: [Int]
}
