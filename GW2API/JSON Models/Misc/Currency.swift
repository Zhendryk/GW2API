//
//  Currency.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct Currency : Decodable {
    let id: Int
    let name: String
    let description: String
    let icon: String
    let order: Int
}
