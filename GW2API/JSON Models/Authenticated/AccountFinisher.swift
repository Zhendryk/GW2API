//
//  AccountFinisher.swift
//  GW2API
//
//  Created by Zhendryk on 3/17/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public struct AccountFinisher: Decodable {
    public let id: Int
    public let permanent: Bool
    public let quantity: Int?
}
