//
//  GW2Client.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class GW2Client {
    public static var lang: String = "en"
    public static var baseURL: URL = URL(string: "https://api.guildwars2.com")!
    public static var version: String = "v2"
    static var session: RequestSession = RequestSession()
    var apiKey: String?
    
    //********** API V2 Objects **********//
    public let build = V2Build(type: "build")
    public let account = V2Account(type: "account")
    public let colors = V2Colors(type: "colors")
    
    public init(lang: String = lang, version: String = version, baseURL: URL = baseURL, apiKey: String? = nil) {
        assert(["en", "es", "de", "fr", "ko", "zh"].contains(lang), "Invalid language")
        assert(["v1", "v2"].contains(version), "Invalid API version")
        self.apiKey = apiKey
        GW2Client.lang = lang
        GW2Client.baseURL = baseURL
        GW2Client.version = version
        if self.apiKey != nil {
            GW2Client.session.setAuthenticationKey(key: self.apiKey!)
        }
    }
    
    public func getKey() -> String? {
        return self.apiKey
    }
}
