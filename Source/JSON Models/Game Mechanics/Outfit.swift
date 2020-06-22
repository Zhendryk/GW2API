//
//  GMOutfit.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//outfits
//lang, page, page_size, id, ids
public struct Outfit: Decodable {
    public let id: Int
    public let name: String
    public let icon: String
    public let unlock_items: [Int]
}
