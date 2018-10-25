//
//  CommerceDelivery.swift
//  GW2API
//
//  Created by Jonathan Bailey on 10/25/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public struct CommerceDelivery : Decodable {
    let coins: Int
    let items: [DeliveredItem]

    public struct DeliveredItem: Decodable {
        let id: Int
        let count: Int
    }
}
