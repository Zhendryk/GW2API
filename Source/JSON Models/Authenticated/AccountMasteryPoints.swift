//
//  AccountMasteryPoints.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

public struct AccountMasteryPoints: Decodable {
    public let totals: [Total]
    public let unlocked: [Int]
    
    public struct Total: Decodable {
        public let region: String
        public let spent: Int
        public let earned: Int
    }
}
