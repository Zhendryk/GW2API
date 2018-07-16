//
//  Finisher.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//finishers
//lang, page, page_size, id, ids
public struct Finisher : Decodable {
    public let id: Int
    public let unlock_details: String
    public let unlock_items: [Int]?
    public let order: Int
    public let icon: String
    public let name: String
}
