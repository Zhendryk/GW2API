//
//  Color.swift
//  GW2API
//
//  Created by Zhendryk on 3/17/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//colors
//lang, id, ids
public struct Color: Decodable {
    let id: Int
    let name: String
    let base_rgb: [Int]
    let cloth: Cloth
    let leather: Leather
    let metal: Metal
    let item: Int?
    let categories: [String]
}

public struct Cloth: Decodable {
    let brightness: Int
    let contrast: Float
    let hue: Int
    let saturation: Float
    let lightness: Float
    let rgb: [Int]
}

public struct Leather: Decodable {
    let brightness: Int
    let contrast: Float
    let hue: Int
    let saturation: Float
    let lightness: Float
    let rgb: [Int]
}

public struct Metal: Decodable {
    let brightness: Int
    let contrast: Float
    let hue: Int
    let saturation: Float
    let lightness: Float
    let rgb: [Int]
}
