//
//  AccountToken.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct AccountToken: Decodable, Identifiable {
    public let id: String
    public let name: String
    public let permissions: [String]
}
