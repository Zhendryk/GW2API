//
//  Novelty.swift
//  GW2API
//
//  Created by Jonathan Bailey on 6/22/20.
//

public struct Novelty : Decodable, Identifiable {
    public let id: Int
    public let name: String
    public let description: String
    public let icon: String
    public let slot: String
    public let unlock_item: [Int]?
}
