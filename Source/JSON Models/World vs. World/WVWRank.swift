//
//  WVWRank.swift
//  GW2API
//
//  Created by Zhendryk on 7/11/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//wvw/ranks
//lang, ids
public struct WVWRank : Decodable {
    public let id: Int
    public let title: String
    public let min_rank: Int
}
