//
//  WVWMatchOverview.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/14/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct WVWMatchOverview : Decodable {
    let id: String
    let worlds: [String:Int]
    let all_worlds: [String:[Int]]
    let start_time: String
    let end_time: String
}
