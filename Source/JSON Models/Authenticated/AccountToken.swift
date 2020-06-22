//
//  AccountToken.swift
//  GW2API
//
//  Created by Zhendryk on 4/21/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct AccountToken: Decodable {
    public let id: String
    public let name: String
    public let permissions: [String]
}
