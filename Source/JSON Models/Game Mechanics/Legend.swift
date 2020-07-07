//
//  GMLegend.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/6/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//legends
//lang, page, page_size, id, ids
public struct Legend : Decodable, Identifiable {
    public let id: String
    public let swap: Int
    public let heal: Int
    public let elite: Int
    public let utilities: [Int]
}
