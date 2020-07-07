//
//  WVWRank.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/11/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//wvw/ranks
//lang, ids
public struct WVWRank : Decodable, Identifiable {
    public let id: Int
    public let title: String
    public let min_rank: Int
}
