//
//  APIUtil.swift
//  GW2API
//
//  Created by Zhendryk on 7/12/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

class APIUtil {
    static func isValidAPIKey(_ key: String) -> Bool {
        if (key.contains(" ") || key.count != 72) { return false }
        return true
    }
    
    static func isValidLanguage(_ lang: String) -> Bool {
        if(!["en", "es", "de", "fr", "ko", "zh"].contains(lang)) { return false }
        return true
    }
}
