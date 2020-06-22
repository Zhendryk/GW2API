//
//  AccountFinisher.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct AccountFinisher: Decodable {
    public let id: Int
    public let permanent: Bool
    public let quantity: Int?
}
