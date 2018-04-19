//
//  Material.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public struct Material: Decodable {
    let id: Int
    let category: Int
    let count: Int
}
