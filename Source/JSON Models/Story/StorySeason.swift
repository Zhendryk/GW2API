//
//  StorySeason.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//stories/seasons
//lang, page, page_size, id, ids
public struct StorySeason : Decodable, Identifiable {
    public let id: String
    public let name: String
    public let order: Int
    public let stories: [Int]
}
