//
//  WVWRank.swift
//  GW2API
//
//  Created by Zhendryk on 7/11/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//wvw/ranks
//lang, ids
struct WVWRank : Decodable {
    let id: Int
    let title: String
    let min_rank: Int
}
