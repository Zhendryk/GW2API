//
//  MiscClient.swift
//  GW2API
//
//  Created by Zhendryk on 7/12/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

/// The miscellaneous endpoint client: api.guildwars2.com/v2/...
public class MiscClient : Client {
    
    /// The build endpoint: information about the current build id
    public let build: BuildClient = BuildClient()
    
    /// The colors endpoint: information about dye colors
    public let colors: ColorsClient = ColorsClient()
    
    /// The currencies endpoint: information about wallet currencies
    public let currencies: CurrenciesClient = CurrenciesClient()
    
    /// The dungeons endpont: information about dungeons and their associated paths
    public let dungeons: DungeonsClient = DungeonsClient()
    
    /// The files endpoint: commonly requested assets
    public let files: FilesClient = FilesClient()
    
    /// The quaggans endpoint: quaggan icons
    public let quaggans: QuaggansClient = QuaggansClient()
    
    /// The minis endpoint: information about minipets
    public let minis: MinisClient = MinisClient()
    
    /// The raids endpoint: information about each raid and its associated events
    public let raids: RaidsClient = RaidsClient()
    
    /// The titles endpoint: information about titles
    public let titles: TitlesClient = TitlesClient()
    
    /// The worlds endpoint: information about world names
    public let worlds: WorldsClient = WorldsClient()
    
    /// Sets the language of every sub endpoint
    ///
    /// - Parameter language: The language to set
    override func setLanguage(_ language: String) {
        self.build.setLanguage(language)
        self.colors.setLanguage(language)
        self.currencies.setLanguage(language)
        self.dungeons.setLanguage(language)
        self.files.setLanguage(language)
        self.quaggans.setLanguage(language)
        self.minis.setLanguage(language)
        self.raids.setLanguage(language)
        self.titles.setLanguage(language)
        self.worlds.setLanguage(language)
    }
    
    
    /// The build endpoint client: api.guildwars2.com/v2/build
    public class BuildClient : Client {
        
        /// Returns the current build ID of the game
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<Build?, APIError>)
        public func get(completion: @escaping (Result<Build?, APIError>) -> Void){
            fetchAsync(with: EMisc.build.request, decode: { json -> Build? in
                guard let res = json as? Build else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The colors endpoint client: api.guildwars2.com/v2/colors
    public class ColorsClient : Client {
        
        /// Returns a list of all color ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.colors.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the color corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the color you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Color?, APIError>)
        public func get(id: Int, completion: @escaping (Result<Color?, APIError>) -> Void) {
            fetchAsync(with: EMisc.colors.idRequest(id: String(id)), decode: { json -> Color? in
                guard let res = json as? Color else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more colors corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the color(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Color]?, APIError>)
        public func get(ids: [Int], completion: @escaping (Result<[Color]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.colors.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [Color]? in
                guard let res = json as? [Color] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated data with the given number of entries about colors
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[Color]?, APIError>)
        public func get(page: Int, page_size: Int, completion: @escaping (Result<[Color]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.colors.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [Color]? in
                guard let res = json as? [Color] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The currencies endpoint client: api.guildwars2.com/v2/currencies
    public class CurrenciesClient : Client {
        
        /// Returns a list of all currency ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.currencies.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the currency corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the currency you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Currency?, APIError>)
        public func get(id: Int, completion: @escaping (Result<Currency?, APIError>) -> Void) {
            fetchAsync(with: EMisc.currencies.idRequest(id: String(id)), decode: { json -> Currency? in
                guard let res = json as? Currency else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more currencies corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the currency(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Currency]?, APIError>)
        public func get(ids: [Int], completion: @escaping (Result<[Currency]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.currencies.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [Currency]? in
                guard let res = json as? [Currency] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated data with the given number of entries about currencies
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[Currency]?, APIError>)
        public func get(page: Int, page_size: Int, completion: @escaping (Result<[Currency]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.currencies.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [Currency]? in
                guard let res = json as? [Currency] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The dungeons endpoint client: api.guildwars2.com/v2/dungeons
    public class DungeonsClient : Client {
        
        /// Returns a list of all dungeon ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.dungeons.request, decode: { json -> [String]? in
                guard let res = json as? [String] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the dungeon corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the dungeon you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Dungeon?, APIError>)
        public func get(id: String, completion: @escaping (Result<Dungeon?, APIError>) -> Void) {
            fetchAsync(with: EMisc.dungeons.idRequest(id: id), decode: { json -> Dungeon? in
                guard let res = json as? Dungeon else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more dungeons corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the dungeon(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Dungeon]?, APIError>)
        public func get(ids: [String], completion: @escaping (Result<[Dungeon]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.dungeons.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.strArrToList(ids))], decode: { json -> [Dungeon]? in
                guard let res = json as? [Dungeon] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated data with the given number of entries about dungeons
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[Dungeon]?, APIError>)
        public func get(page: Int, page_size: Int, completion: @escaping (Result<[Dungeon]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.dungeons.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [Dungeon]? in
                guard let res = json as? [Dungeon] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The files endpoint client: api.guildwars2.com/v2/files
    public class FilesClient : Client {
        
        /// Returns a list of all file ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.files.request, decode: { json -> [String]? in
                guard let res = json as? [String] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the file corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the file you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<File?, APIError>)
        public func get(id: String, completion: @escaping (Result<File?, APIError>) -> Void) {
            fetchAsync(with: EMisc.files.idRequest(id: id), decode: { json -> File? in
                guard let res = json as? File else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more files corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the file(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[File]?, APIError>)
        public func get(ids: [String], completion: @escaping (Result<[File]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.files.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.strArrToList(ids))], decode: { json -> [File]? in
                guard let res = json as? [File] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated data with the given number of entries about files
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[File]?, APIError>)
        public func get(page: Int, page_size: Int, completion: @escaping (Result<[File]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.files.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [File]? in
                guard let res = json as? [File] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The quaggans endpoint client: api.guildwars2.com/v2/quaggans
    public class QuaggansClient : Client {
        
        /// Returns a list of all quaggan ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.quaggans.request, decode: { json -> [String]? in
                guard let res = json as? [String] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the quaggan corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the quaggan you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Quaggan?, APIError>)
        public func get(id: String, completion: @escaping (Result<Quaggan?, APIError>) -> Void) {
            fetchAsync(with: EMisc.quaggans.idRequest(id: id), decode: { json -> Quaggan? in
                guard let res = json as? Quaggan else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more quaggans corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the quaggan(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Quaggan]?, APIError>)
        public func get(ids: [String], completion: @escaping (Result<[Quaggan]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.quaggans.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.strArrToList(ids))], decode: { json -> [Quaggan]? in
                guard let res = json as? [Quaggan] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated data with the given number of entries about quaggans
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[Quaggan]?, APIError>)
        public func get(page: Int, page_size: Int, completion: @escaping (Result<[Quaggan]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.quaggans.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [Quaggan]? in
                guard let res = json as? [Quaggan] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The minipets endpoint client: api.guildwars2.com/v2/minis
    public class MinisClient : Client {
        
        /// Returns a list of all minipet ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.minis.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the minipet corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the minipet you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Minipet?, APIError>)
        public func get(id: Int, completion: @escaping (Result<Minipet?, APIError>) -> Void) {
            fetchAsync(with: EMisc.minis.idRequest(id: String(id)), decode: { json -> Minipet? in
                guard let res = json as? Minipet else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more minipets corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the minipet(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Minipet]?, APIError>)
        public func get(ids: [Int], completion: @escaping (Result<[Minipet]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.minis.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [Minipet]? in
                guard let res = json as? [Minipet] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated data with the given number of entries about minipets
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[Minipet]?, APIError>)
        public func get(page: Int, page_size: Int, completion: @escaping (Result<[Minipet]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.minis.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [Minipet]? in
                guard let res = json as? [Minipet] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The raids endpoint client: api.guildwars2.com/v2/raids
    public class RaidsClient : Client {
        
        /// Returns a list of all raid ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.raids.request, decode: { json -> [String]? in
                guard let res = json as? [String] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the raid corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the raid you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Raid?, APIError>)
        public func get(id: String, completion: @escaping (Result<Raid?, APIError>) -> Void) {
            fetchAsync(with: EMisc.raids.idRequest(id: id), decode: { json -> Raid? in
                guard let res = json as? Raid else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more raids corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the raid(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Raid]?, APIError>)
        public func get(ids: [String], completion: @escaping (Result<[Raid]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.raids.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.strArrToList(ids))], decode: { json -> [Raid]? in
                guard let res = json as? [Raid] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated data with the given number of entries about raids
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[Raid]?, APIError>)
        public func get(page: Int, page_size: Int, completion: @escaping (Result<[Raid]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.raids.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [Raid]? in
                guard let res = json as? [Raid] else { return nil }
                return res
            }, completion: completion)
        }
    }
    
    /// The titles endpoint client: api.guildwars2.com/v2/titles
    public class TitlesClient : Client {
        
        /// Returns a list of all title ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.titles.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the title corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the title you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Title?, APIError>)
        public func get(id: Int, completion: @escaping (Result<Title?, APIError>) -> Void) {
            fetchAsync(with: EMisc.titles.idRequest(id: String(id)), decode: { json -> Title? in
                guard let res = json as? Title else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more titles corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the title(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Title]?, APIError>)
        public func get(ids: [Int], completion: @escaping (Result<[Title]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.titles.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [Title]? in
                guard let res = json as? [Title] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated data with the given number of entries about titles
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[Title]?, APIError>)
        public func get(page: Int, page_size: Int, completion: @escaping (Result<[Title]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.titles.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [Title]? in
                guard let res = json as? [Title] else { return nil }
                return res
            }, completion: completion)
        }    }
    
    /// The worlds endpoint client: api.guildwars2.com/v2/worlds
    public class WorldsClient : Client {
        
        /// Returns a list of all world ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.worlds.request, decode: { json -> [Int]? in
                guard let res = json as? [Int] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the world corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the world you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<World?, APIError>)
        public func get(id: Int, completion: @escaping (Result<World?, APIError>) -> Void) {
            fetchAsync(with: EMisc.worlds.idRequest(id: String(id)), decode: { json -> World? in
                guard let res = json as? World else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more worlds corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the world(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[World]?, APIError>)
        public func get(ids: [Int], completion: @escaping (Result<[World]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.worlds.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [World]? in
                guard let res = json as? [World] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the given page of paginated data with the given number of entries about worlds
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[World]?, APIError>)
        public func get(page: Int, page_size: Int, completion: @escaping (Result<[World]?, APIError>) -> Void) {
            fetchAsync(with: EMisc.worlds.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [World]? in
                guard let res = json as? [World] else { return nil }
                return res
            }, completion: completion)
        }
    }
}
