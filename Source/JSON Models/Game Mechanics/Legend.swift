//
//  GMLegend.swift
//  GW2API
//
//  Created by Zhendryk on 7/6/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//legends
//lang, page, page_size, id, ids
public struct Legend : Decodable {
    public let id: String
    public let swap: Int
    public let heal: Int
    public let elite: Int
    public let utilities: [Int]
}
