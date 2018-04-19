//
//  APIV2Object.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class APIV2Object: APIBaseObject {
    override init(type: String) {
        super.init(type: type)
    }
    
    func getArr<T>() throws -> [T]? where T : Decodable {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
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
    
    func get<T>() throws -> T? where T : Decodable {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
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
    
    func getKW<T>(kwargs: [String:String]) throws -> T? where T : Decodable {
        let (data, _, error) = super.getJSON(url: nil, kwargs: kwargs)
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
    
    func getArrKW<T>(kwargs: [String:String]) throws -> [T]? where T : Decodable {
        let (data, _, error) = super.getJSON(url: nil, kwargs: kwargs)
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
    
    func addKWToURL(kwargs: [Int:String]) {
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
