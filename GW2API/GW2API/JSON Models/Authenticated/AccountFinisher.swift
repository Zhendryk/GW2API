//
//  AccountFinisher.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct AccountFinisher: Decodable {
    let id: Int
    let permanent: Bool
    let quantity: Int?
}
