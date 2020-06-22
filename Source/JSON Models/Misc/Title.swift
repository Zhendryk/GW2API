//
//  Title.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//titles
//lang, page, page_size, id, ids
public struct Title : Decodable {
    public let id: Int
    public let name: String
    public let achievement: Int
    public let achievements: [Int]
    public let ap_required: Int?
}
