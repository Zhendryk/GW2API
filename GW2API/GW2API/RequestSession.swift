//
//  RequestSession.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

internal class RequestSession {
    
    var apiKey: String? = nil
    
    init() {}
    
    func get(url: URL) -> (Data?, URLResponse?, Error?) {
        var request = URLRequest(url: url)
        if apiKey != nil {
            //var newURLStr = url.absoluteString
            //newURLStr.append("?access_token=\(apiKey!)")
            //request = URLRequest(url: URL(string: newURLStr)!)
            request.addValue("Bearer \(apiKey!)", forHTTPHeaderField: "Authorization")
        }
        return URLSession.shared.synchronousDataTask(with: request)
    }
    
    func getAsync(url: URL, complete: @escaping (Data?, URLResponse?, Error?) -> ()) -> URLSessionDataTask {
        var request = URLRequest(url: url)
        if apiKey != nil {
            var newURLStr = url.absoluteString
            newURLStr.append("?access_token=\(apiKey!)")
            request = URLRequest(url: URL(string: newURLStr)!)
            request.addValue("Bearer \(apiKey!)", forHTTPHeaderField: "Authorization")
        }
        return URLSession.shared.dataTask(with: request, completionHandler: complete)
    }
    
    func setAuthenticationKey(key: String){
        self.apiKey = key
    }
}

extension URLSession {
    func synchronousDataTask(with request: URLRequest) -> (Data?, URLResponse?, Error?) {
        var data: Data?
        var response: URLResponse?
        var error: Error?
        
        let semaphore = DispatchSemaphore(value: 0)
        
        let task = self.dataTask(with: request) {
            data = $0
            response = $1
            error = $2
            
            semaphore.signal()
        }
        task.resume()
        
        _ = semaphore.wait(timeout: .distantFuture)
        
        return (data, response, error) //Need to check for error here, if there is none then decode the data and return that
    }
}
