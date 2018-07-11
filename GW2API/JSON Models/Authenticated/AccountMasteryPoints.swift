//
//  AccountMasteryPoints.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct AccountMasteryPoints: Decodable {
    let totals: [Total]
    let unlocked: [Int]
    
    struct Total: Decodable {
        let region: String
        let spent: Int
        let earned: Int
    }
}
