//
//  AccountTransaction.swift
//  GW2API
//
//  Created by Zhendryk on 4/21/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct AccountTransaction: Decodable {
    public let id: Int
    public let item_id: Int
    public let price: Int
    public let quantity: Int
    public let created: String
    public let purchased: String
}
