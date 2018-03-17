//
//  BankItem.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public struct BankItem: Decodable {
    let id: Int
    let count: Int
    let skin: Int?
    let upgrades: [Int]?
    let infusions: [Int]?
    let binding: String?
    let charges: Int?
    let bound_to: String?
    let dyes: [Int]?
    let stats: stats?
}

struct stats: Decodable {
    let id: Int
    let attributes: [String:Float]?
}
