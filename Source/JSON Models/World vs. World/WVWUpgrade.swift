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
    public let id: Int
    public let tiers: [WVWUpgradeTier]
    
    public struct WVWUpgradeTier : Decodable {
        public let name: String
        public let yaks_required: Int
        public let upgrades: [WVWUpgradeTierUpgrade]
        
        public struct WVWUpgradeTierUpgrade : Decodable {
            public let name: String
            public let description: String
            public let icon: String
        }
    }
}
