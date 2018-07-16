//
//  GMMasteries.swift
//  GW2API
//
//  Created by Zhendryk on 4/21/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//masteries
//lang, id, ids
struct GMMasteries: Decodable {
    let id: Int
    let name: String
    let requirement: String
    let order: Int
    let background: String
    let region: String
    let levels: [MasteryLevel]
    
    struct MasteryLevel: Decodable {
        let name: String
        let description: String
        let instruction: String
        let icon: String
        let point_cost: Int
        let exp_cost: Int
    }
}


