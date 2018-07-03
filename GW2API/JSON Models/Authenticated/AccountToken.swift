//
//  AccountToken.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct AccountToken: Decodable {
    let id: String
    let name: String
    let permissions: [String]
}
