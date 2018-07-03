//
//  Endpoint.swift
//  GW2API
//
//  Created by Jonathan Bailey on 6/30/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

protocol Endpoint {
    var base: String { get }
    var version: String { get }
    var path: String { get }
    
    mutating func setAPIKey(key: String)
}

extension Endpoint {
    
    var base: String {
        return "https://api.guildwars2.com"
    }
    
    var version: String {
        return "v2"
    }
    
    var urlComponents: URLComponents {
        get {
            var components = URLComponents(string: base)!
            components.path = "/" + version + "/" + path
            //components.queryItems = queryParameters
            return components
        }
        set {
            urlComponents = newValue
        }
    }
    
    var request: URLRequest {
        get {
            let url = urlComponents.url!
            return URLRequest(url: url)
        }
        set {
            request = newValue
        }
    }
    
    mutating func setAPIKey(key: String) {
        var authenticatedRequest = request
        if key != "" {
            authenticatedRequest.setValue("Bearer \(key)", forHTTPHeaderField: "Authorization")
            authenticatedRequest.httpMethod = "GET"
            request = authenticatedRequest
        }
    }
}
