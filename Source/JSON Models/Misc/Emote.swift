//
//  Emote.swift
//  GW2API
//
//  Created by Jonathan Bailey on 6/22/20.
//

public struct Emote : Decodable {
    let id: String
    let commands: [String]
    let unlock_items: [Int]
}
