//
//  GMMasteries.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//masteries
//lang, id, ids
public struct Mastery: Decodable {
    public let id: Int
    public let name: String
    public let requirement: String
    public let order: Int
    public let background: String
    public let region: String
    public let levels: [MasteryLevel]
    
    public struct MasteryLevel: Decodable {
        public let name: String
        public let description: String
        public let instruction: String
        public let icon: String
        public let point_cost: Int
        public let exp_cost: Int
    }
}


