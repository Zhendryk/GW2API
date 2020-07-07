//
//  Emote.swift
//  GW2API
//
//  Created by Jonathan Bailey on 6/22/20.
//

public struct Emote : Decodable, Identifiable {
    public let id: String
    public let commands: [String]
    public let unlock_items: [Int]
}
