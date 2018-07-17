//
//  GW2Client.swift
//  GW2API
//
//  Created by Zhendryk on 6/30/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

/// Main client of the framework, implemented as a singleton.
public class GW2Client {
    
    /// The singleton instance of the GW2Client. Used to access all endpoints.
    public static let instance = GW2Client()
    
    /// The language of the client, default English(en)
    private var lang: String = ""
    
    /// The API key assigned to the client, default nil
    private var apiKey: String? = nil
    
    /// The Guild ID assigned to the client, default nil
    private var guildID: String? = nil
    
    /// The achievements endpoint: information about Guild Wars 2 achievements
    public let achievements: AchievementsClient = AchievementsClient()
    
    /// The authenticated endpoint: information about accounts, requires a valid API key to access and view
    public let authenticated: AuthenticatedClient = AuthenticatedClient()
    
    /// The game mechanics endpoint: information about various game mechanics
    public let gameMechanics: GameMechanicsClient = GameMechanicsClient()
    
    /// The guild endpoint: information about guilds
    public let guild: GuildClient = GuildClient()
    
    /// The items endpoint: information about items
    public let items: ItemsClient = ItemsClient()
    
    /// The map information endpoint: information about the map
    public let mapinfo: MapInfoClient = MapInfoClient()
    
    /// The miscellaneous endpoint: miscellaneous information
    public let misc: MiscClient  = MiscClient()
    
    /// The story endpoint: information about the Guild Wars 2 story and character backstories
    public let story: StoryClient = StoryClient()
    
    /// The pvp endpoint: information about Guild Wars 2 PVP
    public let pvp: PVPClient = PVPClient()
    
    /// The trading post endpoint: information about the Black Lion Trading Post
    public let tradingPost: TradingPostClient = TradingPostClient()
    
    /// The wvw endpoint: information about Guild Wars 2 world vs world
    public let wvw: WVWClient = WVWClient()
    
    private init() {
        _ = self.setLanguage(lang: "en")
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
    public func setLanguage(lang: String) -> Bool {
        let langLower = lang.lowercased()
        if APIUtil.isValidLanguage(langLower) {
            self.lang = langLower
            self.achievements.setLanguage(langLower)
            self.authenticated.setLanguage(langLower)
            self.gameMechanics.setLanguage(langLower)
            self.guild.setLanguage(langLower)
            self.items.setLanguage(langLower)
            self.mapinfo.setLanguage(langLower)
            self.misc.setLanguage(langLower)
            self.story.setLanguage(langLower)
            self.pvp.setLanguage(langLower)
            self.tradingPost.setLanguage(langLower)
            self.wvw.setLanguage(langLower)
            return true
        }
        return false
    }
    
    /// Returns the currently set API key for the client
    ///
    /// - Returns: The currently set API key, default ""
    public func currentAPIKey() -> String {
        guard let key = self.apiKey else { return "" }
        return key
    }
    
    /// Takes a valid API key as a String and sets it to all authenticated endpoints in the client
    ///
    /// - Parameter key: A valid API key generated from guildwars2.com
    public func setAPIKey(key: String) -> Bool {
        if APIUtil.isValidAPIKey(key) {
            self.apiKey = key
            self.authenticated.setAPIKey(key)
            self.guild.setAPIKey(key)
            return true
        }
        return false
    }
    
    /// Returns the currently set guild ID for the client
    ///
    /// - Returns: The currently set guild ID, default ""
    public func currentGuildID() -> String {
        guard let id = self.guildID else { return "" }
        return id
    }
    
    /// Takes a valid guild ID as a String and sets it to the guild endpoint
    ///
    /// - Parameter id: The ID of the guild you want to query for
    public func setGuildID(id: String) {
        self.guildID = id
    }
    
    /// Prints all of the current settings of the client to the console and returns it for external use
    public func settings() -> String {
        var settingsStr = "GW2API Client Settings\n--------------------------\n"
        settingsStr.append("Base URL: https://api.guildwars2.com\n")
        settingsStr.append("Version: V2\n")
        settingsStr.append("Language: \(self.lang)\n")
        if self.apiKey != nil {
            settingsStr.append("API Key: \(self.apiKey!)\n")
        }
        else { settingsStr.append("API Key: None set\n") }
        if self.guildID != nil {
            settingsStr.append("Guild ID: \(self.guildID!)\n")
        }
        else { settingsStr.append("Guild ID: None set\n") }
        print(settingsStr)
        return settingsStr
    }
}
