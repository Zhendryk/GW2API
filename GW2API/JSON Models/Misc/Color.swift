//
//  Color.swift
//  GW2API
//
//  Created by Zhendryk on 3/17/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

public typealias Cloth = DyeMaterial
public typealias Leather = DyeMaterial
public typealias Metal = DyeMaterial
public typealias Fur = DyeMaterial

public struct Color: Decodable {
    public let id: Int
    public let name: String
    public let base_rgb: [Int]
    public let cloth: Cloth
    public let leather: Leather
    public let metal: Metal
    public let fur: Fur?
    public let item: Int?
    public let categories: [String]
}

public struct DyeMaterial: Decodable {
    public let brightness: Int
    public let contrast: Float
    public let hue: Int
    public let saturation: Float
    public let lightness: Float
    public let rgb: [Int]
}
