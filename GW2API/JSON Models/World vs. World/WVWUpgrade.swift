//
//  WVWUpgrade.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/11/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//wvw/upgrades
//lang
struct WVWUpgrade : Decodable {
    let id: Int
    let tiers: [WVWUpgradeTier]
    
    struct WVWUpgradeTier : Decodable {
        let name: String
        let yaks_required: Int
        let upgrades: [WVWUpgradeTierUpgrade]
        
        struct WVWUpgradeTierUpgrade : Decodable {
            let name: String
            let description: String
            let icon: String
        }
    }
}
