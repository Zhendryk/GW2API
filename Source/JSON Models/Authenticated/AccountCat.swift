//
//  AccountCat.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//account/home/cats
//access_token
public struct AccountCat: Decodable, Identifiable {
    public let id: Int
    public let hint: String?
}
