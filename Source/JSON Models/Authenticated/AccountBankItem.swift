//
//  AccountBankItem.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//account/bank
//access_token
public struct AccountBankItem: Decodable, Identifiable {
    public let id: Int
    public let count: Int
    public let skin: Int?
    public let upgrades: [Int]?
    public let infusions: [Int]?
    public let binding: String?
    public let charges: Int?
    public let bound_to: String?
    public let dyes: [Int]?
    public let stats: BankItemStats?
    
    public struct BankItemStats: Decodable {
        public let id: Int
        public let attributes: [String:Float]?
    }
}
