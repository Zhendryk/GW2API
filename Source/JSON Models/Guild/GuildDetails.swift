//
//  GuildDetails.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct GuildDetails: Decodable, Identifiable {
    public let level: Int?
    public let motd: String?
    public let influence: Int?
    public let aetherium: String?
    public let favor: Int?
    public let id: String
    public let name: String
    public let tag: String
    public let emblem: emblem?
    public let flags: [String]?
}

public struct emblem: Decodable {
    public let background: background
    public let foreground: foreground
}

public struct background: Decodable, Identifiable {
    public let id: Int
    public let colors: [Int]
}

public struct foreground: Decodable, Identifiable {
    public let id: Int
    public let colors: [Int]
}
