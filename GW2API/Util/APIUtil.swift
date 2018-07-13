//
//  APIUtil.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/12/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class APIUtil {
    static func intArrToStrList(_ arr: [Int]) -> String {
        return arr.map { String($0) }.joined(separator: ", ")
    }
    
    static func strArrToList(_ arr: [String]) -> String {
        return arr.joined(separator: ", ")
    }
}
