//
//  WVWMatchOverview.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/14/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct WVWMatchOverview : Decodable, Identifiable {
    public let id: String
    public let worlds: [String:Int]
    public let all_worlds: [String:[Int]]
    public let start_time: String
    public let end_time: String
}
