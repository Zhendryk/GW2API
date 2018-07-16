//
//  WVWMatchOverview.swift
//  GW2API
//
//  Created by Zhendryk on 7/14/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct WVWMatchOverview : Decodable {
    let id: String
    let worlds: [String:Int]
    let all_worlds: [String:[Int]]
    let start_time: String
    let end_time: String
}
