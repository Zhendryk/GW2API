//
//  Permissions.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/18/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//guild/permissions
//lang, id, ids
public struct Permissions: Decodable, Identifiable {
    public let id: String
    public let name: String
    public let description: String
}
