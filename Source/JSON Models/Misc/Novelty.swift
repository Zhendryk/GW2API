//
//  Novelty.swift
//  GW2API
//
//  Created by Jonathan Bailey on 6/22/20.
//

public struct Novelty : Decodable {
    let id: Int
    let name: String
    let description: String
    let icon: String
    let slot: String
    let unlock_item: [Int]?
}
