//
//  APIV2Object.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

internal class APIV2Object: APIObject {
    override init(type: String) {
        super.init(type: type)
    }
    
    internal func get<T>() throws -> T? where T : Decodable {
        let (data, _, error) = super.queryAPI(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode(T.self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
    
    internal func getArr<T>() throws -> [T]? where T : Decodable {
        let (data, _, error) = super.queryAPI(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode([T].self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
    
    internal func getKW<T>(kwargs: [String:String]) throws -> T? where T : Decodable {
        let (data, _, error) = super.queryAPI(url: nil, kwargs: kwargs)
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode(T.self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
    
    internal func getKWArr<T>(kwargs: [String:String]) throws -> [T]? where T : Decodable {
        let (data, _, error) = super.queryAPI(url: nil, kwargs: kwargs)
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode([T].self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
    
    internal func addKWToURL(kwargs: [Int:String]) {
        var typeBuilt = ""
        var typeArr = type.split(separator: "/")
        var i = 0
        let sortedKeys = Array(kwargs.keys).sorted(by: <)
        for key in sortedKeys {
            while i < (key-1) {
                typeBuilt.append(typeArr[i] + "/")
                i += 1
            }
            if let kwargValue = kwargs[key] {
                typeBuilt.append(kwargValue + "/")
            }
        }
        self.type = typeBuilt
    }
}
