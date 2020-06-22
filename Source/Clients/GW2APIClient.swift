//
//  GW2APIClient.swift
//  GW2API
//
//  Created by Zhendryk on 7/2/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

import GenericAPIClient

/// The protocol for all endpoint clients to conform to
protocol GW2APIClient {
    var baseURL: String { get }
    var apiKey: String? { get set }
    var guildID: String? { get set }
    var lang: String { get set }
    var client: APIClient { get }
}

/// The base class for all endpoint clients
public class Client : GW2APIClient {
    
    var baseURL: String { return "https://api.guildwars2.com/v2" }
    
    var apiKey: String?
    
    var guildID: String?
    
    var lang: String = "en"
    
    var client: APIClient = APIClient("https://api.guildwars2.com/v2")

    init() {}

    /// Takes a valid API key as a string and sets it to this client (synced between all if set from GW2Client.instance)
    ///
    /// - Parameter key: A valid API key generated from guildwars2.com
    func setAPIKey(_ key: String) {
        self.apiKey = key
    }
    
    /// Sets the guild ID for this client
    ///
    /// - Parameter id: The ID of the guild you wish to query for
    func setGuildID(_ id: String) {
        self.guildID = id
    }
    
    /// Set the language for this client
    ///
    /// - Parameter language: The language you wish to recieve data in. Possible values: en, es, de, fr, ko, zh
    func setLanguage(_ language: String) {
        self.lang = language
    }
}
