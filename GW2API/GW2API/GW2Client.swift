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
    let achievements = V2Achievements(type: "achievements")
    let authenticated = V2Authenticated()
    let gamemechanics = V2GameMechanics()
    let guild = V2Guild()
    //let items = V2Items()
    let mapinformation = V2MapInformation()
    let misc = V2Misc()
    let story = V2Story()
    let structuredpvp = V2StructuredPVP(type: "pvp")
    let tradingpost = V2TradingPost()
    let wvw = V2WVW(type: "wvw")
    
    init(lang: String = lang, version: String = version, baseURL: URL = baseURL, apiKey: String? = nil) {
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
