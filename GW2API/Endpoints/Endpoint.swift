//
//  Endpoint.swift
//  GW2API
//
//  Created by Jonathan Bailey on 6/30/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//


/// The protocol to which all API endpoints conform to
protocol Endpoint {
    var base: String { get }
    var version: String { get }
    var path: String { get }
}


// MARK: - Extension to Endpoint protocol, defines base url, version, urlComponents, and request
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
    
    func idRequest(id: String) -> URLRequest {
        var url = request.url!
        url.appendPathComponent(id)
        return URLRequest(url: url)
    }
}
