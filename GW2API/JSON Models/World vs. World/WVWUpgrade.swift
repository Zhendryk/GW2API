//
//  WVWUpgrade.swift
//  GW2API
//
//  Created by Zhendryk on 7/11/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//wvw/upgrades
//lang
public struct WVWUpgrade : Decodable {
    let id: Int
    let tiers: [WVWUpgradeTier]
    
    public struct WVWUpgradeTier : Decodable {
        let name: String
        let yaks_required: Int
        let upgrades: [WVWUpgradeTierUpgrade]
        
        public struct WVWUpgradeTierUpgrade : Decodable {
            let name: String
            let description: String
            let icon: String
        }
    }
}
