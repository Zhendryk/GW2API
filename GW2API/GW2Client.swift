//
//  GW2Client.swift
//  GW2API
//
//  Created by Jonathan Bailey on 6/30/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

/// Main client of the framework, implemented as a singleton.
public class GW2Client {
    
    /// The singleton instance of the GW2Client. Used to access all endpoints.
    public static let instance = GW2Client()
    private var lang: String = "en"
    private var apiKey: String? = nil
    private var guildID: String? = nil
    
    /// The achievements endpoint: api.guildwars2.com/v2/achievements/...
    let achievements: AchievementsClient = AchievementsClient()
    
    /// The authenticated endpoint: api.guildwars2.com/v2/...
    let authenticated: AuthenticatedClient = AuthenticatedClient()
    
    /// The game mechanics endpoint: api.guildwars2.com/v2/...
    let gameMechanics: GameMechanicsClient = GameMechanicsClient()
    
    /// The guild endpoint: api.guildwars2.com/v2/guild/...
    let guild: GuildClient = GuildClient()
    
    /// The items endpoint: api.guildwars2.com/v2/...
    let items: ItemsClient = ItemsClient()
    
    private init() {
        self.setLanguage(lang: "en")
    }
    
    /// Returns the language setting of the GuildWars 2 Client
    ///
    /// - Returns: Returns a String containing the language setting
    public func language() -> String {
        return self.lang
    }
    
    /// Takes a string argument and sets the GuildWars 2 Client's language setting
    ///
    /// - Parameter lang: Any of the following supported language strings: en, es, de, fr, ko, zh
    public func setLanguage(lang: String) {
        let langLower = lang.lowercased()
        assert(["en", "es", "de", "fr", "ko", "zh"].contains(langLower), "Provided language is not supported. Possible values: en, es, de, fr, ko, zh")
        self.lang = langLower
        self.achievements.setLanguage(langLower)
        self.authenticated.setLanguage(langLower)
        self.gameMechanics.setLanguage(langLower)
        self.guild.setLanguage(langLower)
        self.items.setLanguage(langLower)
    }
    
    /// Takes a valid API key as a String and sets it to all authenticated endpoints in the client
    ///
    /// - Parameter key: A valid API key generated from guildwars2.com
    public func setAPIKey(key: String) {
        self.apiKey = key
        self.authenticated.setAPIKey(key)
    }
    
    /// Takes a valid guild ID as a String and sets it to the guild endpoint
    ///
    /// - Parameter id: The ID of the guild you want to query for
    public func setGuildID(id: String) {
        self.guildID = id
    }
    
    /// Prints all of the current settings of the client
    public func settings() {
        print("GW2API Client Settings\n--------------------------\n")
        print("Base URL: https://api.guildwars2.com")
        print("Version: V2")
        print("Language: \(self.lang)")
        if self.apiKey != nil {
            print("API Key: \(self.apiKey!)")
        }
        else { print("API Key: None set") }
        if self.guildID != nil {
            print("Guild ID: \(self.guildID!)")
        }
        else { print("Guild ID: None set") }
    }
}
