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
    public let id: Int
    public let name: String
    public let base_rgb: [Int]
    public let cloth: Cloth
    public let leather: Leather
    public let metal: Metal
    public let item: Int?
    public let categories: [String]
}

public struct Cloth: Decodable {
    public let brightness: Int
    public let contrast: Float
    public let hue: Int
    public let saturation: Float
    public let lightness: Float
    public let rgb: [Int]
}

public struct Leather: Decodable {
    public let brightness: Int
    public let contrast: Float
    public let hue: Int
    public let saturation: Float
    public let lightness: Float
    public let rgb: [Int]
}

public struct Metal: Decodable {
    public let brightness: Int
    public let contrast: Float
    public let hue: Int
    public let saturation: Float
    public let lightness: Float
    public let rgb: [Int]
}
