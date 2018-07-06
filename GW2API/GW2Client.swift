//
//  GW2Client.swift
//  GW2API
//
//  Created by Jonathan Bailey on 6/30/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// @Class GW2Client: Main client of the framework, implemented as a singleton.                                                    //
// @static instance: The one and only instance of the GW2Client.                                                                  //
// @var lang: Private variable containing the language setting of the API wrapper.                                                //
// @var apiKey: Private variable containing the user's authorization key for the GW2 API.                                         //
// @init(): Private init, should not be invoked because of singleton status.                                                      //
//                                                                                                                                //
// @let achievements: Achievements endpoint of the GW2 API. Accessed via GW2Client.instance.achievements...                       //
// ...                                                                                                                            //
//                                                                                                                                //
// @func language(): Returns the currently set language of the GW2Client.                                                         //
// @func setLanguage(lang: String): Sets a new language to the GW2Client. Possible values: ['en', 'es', 'de', 'fr', 'ko', 'zh'].  //
// @setAPIKey(key: String): Sets a new API key to the GW2Client.                                                                  //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
public class GW2Client {
    public static let instance = GW2Client()
    private var lang: String = "en"
    private var apiKey: String? = nil
    
    let achievements: AchievementsClient = AchievementsClient()
    let authenticated: AuthenticatedClient = AuthenticatedClient()
    let gameMechanics: GameMechanicsClient = GameMechanicsClient()
    
    private init() {}

    public func language() -> String {
        return self.lang
    }

    public func setLanguage(lang: String) {
        assert(["en", "es", "de", "fr", "ko", "zh"].contains(lang.lowercased()), "Provided language is not supported. Possible values: en, es, de, fr, ko, zh")
        self.lang = lang.lowercased()
    }

    public func setAPIKey(key: String) {
        self.apiKey = key
        self.authenticated.setAPIKey(key)
    }
}
