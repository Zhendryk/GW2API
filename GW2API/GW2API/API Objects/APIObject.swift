//
//  APIObject.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

internal class APIObject {
    
    var type: String
    var session: RequestSession
    var baseURL: URL
    var version: String
    
    init(type: String){
        assert(type != "", "Object needs a valid type to query api")
        self.type = type
        self.version = GW2Client.version
        self.baseURL = GW2Client.baseURL
        self.session = GW2Client.session
    }
    
    private func buildEndpointURL(url: URL? = nil, kwargs:[String:String] = [:]) -> URL? {
        var requestURL: URL? = url

        if requestURL == nil {
            requestURL = URL(string: "\(self.baseURL.absoluteString)/\(self.version)/\(self.type)")
        }
        var urlStr = requestURL!.absoluteString
        if let name = kwargs["name"] {
            urlStr.append("?name=\(name)")
        }
        if let id = kwargs["id"] {
            urlStr.append("/\(id)")
        }
        if let ids = kwargs["ids"] {
            urlStr.append("?ids=\(ids)")
        }
        if kwargs["page"] != nil || kwargs["page_size"] != nil {
            urlStr.append("?")
        }
        if let page = kwargs["page"] {
            urlStr.append("page=\(page)&")
        }
        if let pageSize = kwargs["page_size"] {
            if let size = Int(pageSize) {
                assert(size > 0 && size <= 200, "Invalid page size")
                urlStr.append("page_size=\(size)")
            }
        }
        urlStr = urlStr.components(separatedBy: CharacterSet.whitespacesAndNewlines).joined()
        requestURL = URL(string: urlStr)
        return requestURL
    }
    
    internal func queryAPI(url: URL? = nil, kwargs:[String:String] = [:]) -> (Data?, URLResponse?, Error?) {
        let requestURL = self.buildEndpointURL(url: url, kwargs: kwargs)
        return self.session.get(url: requestURL!)
    }
}
