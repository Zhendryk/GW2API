//
//  EMisc.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/12/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

enum EMisc {
    case build
    case colors
    case currencies
    case dungeons
    case files
    case quaggans
    case minis
    case raids
    case titles
    case worlds
}

extension EMisc : Endpoint {
    var path: String {
        switch self {
        case .build: return "build"
        case .colors: return "colors"
        case .currencies: return "currencies"
        case .dungeons: return "dungeons"
        case .files: return "files"
        case .quaggans: return "quaggans"
        case .minis: return "minis"
        case .raids: return "raids"
        case .titles: return "titles"
        case .worlds: return "worlds"
        }
    }
}
