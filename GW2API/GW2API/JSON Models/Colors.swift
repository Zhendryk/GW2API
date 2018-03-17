//
//  Colors.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public struct Colors: Decodable {
    let id: Int
    let name: String
    let base_rgb: [Int]
    let cloth: cloth
    let leather: leather
    let metal: metal
    let item: Int
    let categories: [String]
}

struct cloth: Decodable {
    let brightness: Int
    let contrast: Float
    let hue: Int
    let saturation: Float
    let lightness: Float
    let rgb: [Int]
}

struct leather: Decodable {
    let brightness: Int
    let contrast: Float
    let hue: Int
    let saturation: Float
    let lightness: Float
    let rgb: [Int]
}

struct metal: Decodable {
    let brightness: Int
    let contrast: Float
    let hue: Int
    let saturation: Float
    let lightness: Float
    let rgb: [Int]
}
