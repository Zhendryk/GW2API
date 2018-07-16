//
//  Permissions.swift
//  GW2API
//
//  Created by Zhendryk on 4/18/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//guild/permissions
//lang, id, ids
public struct Permissions: Decodable {
    let id: String
    let name: String
    let description: String
}
