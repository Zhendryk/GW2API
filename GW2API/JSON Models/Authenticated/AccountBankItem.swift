//
//  AccountBankItem.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//account/bank
//access_token
struct AccountBankItem: Decodable {
    let id: Int
    let count: Int
    let skin: Int?
    let upgrades: [Int]?
    let infusions: [Int]?
    let binding: String?
    let charges: Int?
    let bound_to: String?
    let dyes: [Int]?
    let stats: BankItemStats?
    
    struct BankItemStats: Decodable {
        let id: Int
        let attributes: [String:Float]?
    }
}
