//
//  MiscClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/12/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import APIClient

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
    
    /// The mounts endpoint: information about mounts
    public let mounts: MountsClient = MountsClient()
    
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
        self.lang = language
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
        self.mounts.skins.setLanguage(language)
        self.mounts.types.setLanguage(language)
    }
    
    
    /// The build endpoint client: api.guildwars2.com/v2/build
    public class BuildClient : Client {
        
        /// Returns the current build ID of the game
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<Build?, APIError>)
        public func get(_ completion: @escaping RequestCallback<Build>){
            self.client.send(request: GetBuild(), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The colors endpoint client: api.guildwars2.com/v2/colors
    public class ColorsClient : Client {
        
        /// Returns a list of all color ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetColorIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the color corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the color you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Color?, APIError>)
        public func get(id: Int, _ completion: @escaping RequestCallback<Color>) {
            self.client.send(request: GetColor(id: id, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more colors corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the color(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Color]?, APIError>)
        public func get(ids: [Int], _ completion: @escaping RequestCallback<[Color]>) {
            self.client.send(request: GetColors(ids: ids, page: nil, page_size: nil, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the given page of paginated data with the given number of entries about colors
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[Color]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[Color]>) {
            self.client.send(request: GetColors(ids: nil, page: page, page_size: page_size, lang: lang), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The currencies endpoint client: api.guildwars2.com/v2/currencies
    public class CurrenciesClient : Client {
        
        /// Returns a list of all currency ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetCurrencyIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the currency corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the currency you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Currency?, APIError>)
        public func get(id: Int, _ completion: @escaping RequestCallback<Currency>) {
            self.client.send(request: GetCurrency(id: id, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more currencies corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the currency(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Currency]?, APIError>)
        public func get(ids: [Int], _ completion: @escaping RequestCallback<[Currency]>) {
            self.client.send(request: GetCurrencies(ids: ids, page: nil, page_size: nil, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the given page of paginated data with the given number of entries about currencies
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[Currency]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[Currency]>) {
            self.client.send(request: GetCurrencies(ids: nil, page: page, page_size: page_size, lang: lang), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The dungeons endpoint client: api.guildwars2.com/v2/dungeons
    public class DungeonsClient : Client {
        
        /// Returns a list of all dungeon ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[String]>) {
            self.client.send(request: GetDungeonIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the dungeon corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the dungeon you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Dungeon?, APIError>)
        public func get(id: String, _ completion: @escaping RequestCallback<Dungeon>) {
            self.client.send(request: GetDungeon(id: id), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more dungeons corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the dungeon(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Dungeon]?, APIError>)
        public func get(ids: [String], _ completion: @escaping RequestCallback<[Dungeon]>) {
            self.client.send(request: GetDungeons(ids: ids, page: nil, page_size: nil), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the given page of paginated data with the given number of entries about dungeons
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[Dungeon]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[Dungeon]>) {
            self.client.send(request: GetDungeons(ids: nil, page: page, page_size: page_size), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The files endpoint client: api.guildwars2.com/v2/files
    public class FilesClient : Client {
        
        /// Returns a list of all file ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[String]>) {
            self.client.send(request: GetFileIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the file corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the file you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<File?, APIError>)
        public func get(id: String, _ completion: @escaping RequestCallback<File>) {
            self.client.send(request: GetFile(id: id), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more files corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the file(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[File]?, APIError>)
        public func get(ids: [String], _ completion: @escaping RequestCallback<[File]>) {
            self.client.send(request: GetFiles(ids: ids, page: nil, page_size: nil), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the given page of paginated data with the given number of entries about files
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[File]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[File]>) {
            self.client.send(request: GetFiles(ids: nil, page: page, page_size: page_size), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The quaggans endpoint client: api.guildwars2.com/v2/quaggans
    public class QuaggansClient : Client {
        
        /// Returns a list of all quaggan ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[String]>) {
            self.client.send(request: GetQuagganIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the quaggan corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the quaggan you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Quaggan?, APIError>)
        public func get(id: String, _ completion: @escaping RequestCallback<Quaggan>) {
            self.client.send(request: GetQuaggan(id: id), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more quaggans corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the quaggan(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Quaggan]?, APIError>)
        public func get(ids: [String], _ completion: @escaping RequestCallback<[Quaggan]>) {
            self.client.send(request: GetQuaggans(ids: ids, page: nil, page_size: nil), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the given page of paginated data with the given number of entries about quaggans
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[Quaggan]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[Quaggan]>) {
            self.client.send(request: GetQuaggans(ids: nil, page: page, page_size: page_size), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The minipets endpoint client: api.guildwars2.com/v2/minis
    public class MinisClient : Client {
        
        /// Returns a list of all minipet ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetMiniIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the minipet corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the minipet you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Minipet?, APIError>)
        public func get(id: Int, _ completion: @escaping RequestCallback<Minipet>) {
            self.client.send(request: GetMini(id: id, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more minipets corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the minipet(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Minipet]?, APIError>)
        public func get(ids: [Int], _ completion: @escaping RequestCallback<[Minipet]>) {
            self.client.send(request: GetMinis(ids: ids, page: nil, page_size: nil, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the given page of paginated data with the given number of entries about minipets
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[Minipet]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[Minipet]>) {
            self.client.send(request: GetMinis(ids: nil, page: page, page_size: page_size, lang: lang), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The mounts endpoint client: api.guildwars2.com/v2/mounts
    public class MountsClient : Client {
        
        /// The mount types endpoint client: api.guildwars2.com/v2/mounts/types
        public let types: MountTypesClient = MountTypesClient()
        
        /// The mount skins endpoint client: api.guildwars2.com/v2/mounts/skins
        public let skins: MountSkinsClient = MountSkinsClient()
        
        /// Returns a list of the /mounts subendpoints
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[String]>) {
            self.client.send(request: GetMounts(), completion: { result in
                completion(result)
            })
        }
        
        /// The mount types endpoint client: api.guildwars2.com/v2/mounts/types
        public class MountTypesClient : Client {
            
            /// Returns a list of all mount type ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
            public func get(_ completion: @escaping RequestCallback<[String]>) {
                self.client.send(request: GetMountTypeIDs(), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns the mount type corresponding to the given ID
            ///
            /// - Parameters:
            ///   - id: The ID of the mount type you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<MountType?, APIError>)
            public func get(id: String, _ completion: @escaping RequestCallback<MountType>) {
                self.client.send(request: GetMountType(id: id, lang: lang), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns one or more mount types corresponding to the given ids
            ///
            /// - Parameters:
            ///   - ids: The id(s) of the mount type(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<[MountType]?, APIError>)
            public func get(ids: [String], _ completion: @escaping RequestCallback<[MountType]>) {
                self.client.send(request: GetMountTypes(ids: ids, page: nil, page_size: nil, lang: lang), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns the given page of paginated data with the given number of entries about mount types
            ///
            /// - Parameters:
            ///   - page: The page number of paginated information
            ///   - page_size: The number of entries to restrict this page to
            ///   - completion: Callback function to handle the data returned from the API (Result<[MountType]?, APIError>)
            public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[MountType]>) {
                self.client.send(request: GetMountTypes(ids: nil, page: page, page_size: page_size, lang: lang), completion: { result in
                    completion(result)
                })
            }
        }
        
        /// The mount skins endpoint client: api.guildwars2.com/v2/mounts/skins
        public class MountSkinsClient : Client {
            
            /// Returns a list of all mount skin ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
            public func get(_ completion: @escaping RequestCallback<[Int]>) {
                self.client.send(request: GetMountSkinIDs(), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns the mount skin corresponding to the given ID
            ///
            /// - Parameters:
            ///   - id: The ID of the mount skin you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<MountSkin?, APIError>)
            public func get(id: Int, _ completion: @escaping RequestCallback<MountSkin>) {
                self.client.send(request: GetMountSkin(id: id, lang: lang), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns one or more mount skins corresponding to the given ids
            ///
            /// - Parameters:
            ///   - ids: The id(s) of the mount skin(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<[MountSkin]?, APIError>)
            public func get(ids: [Int], _ completion: @escaping RequestCallback<[MountSkin]>) {
                self.client.send(request: GetMountSkins(ids: ids, page: nil, page_size: nil, lang: lang), completion: { result in
                    completion(result)
                })
            }
            
            /// Returns the given page of paginated data with the given number of entries about mount skins
            ///
            /// - Parameters:
            ///   - page: The page number of paginated information
            ///   - page_size: The number of entries to restrict this page to
            ///   - completion: Callback function to handle the data returned from the API (Result<[MountSkin]?, APIError>)
            public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[MountSkin]>) {
                self.client.send(request: GetMountSkins(ids: nil, page: page, page_size: page_size, lang: lang), completion: { result in
                    completion(result)
                })
            }
        }
    }
    
    /// The raids endpoint client: api.guildwars2.com/v2/raids
    public class RaidsClient : Client {
        
        /// Returns a list of all raid ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[String]>) {
            self.client.send(request: GetRaidIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the raid corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the raid you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Raid?, APIError>)
        public func get(id: String, _ completion: @escaping RequestCallback<Raid>) {
            self.client.send(request: GetRaid(id: id), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more raids corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the raid(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Raid]?, APIError>)
        public func get(ids: [String], _ completion: @escaping RequestCallback<[Raid]>) {
            self.client.send(request: GetRaids(ids: ids, page: nil, page_size: nil), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the given page of paginated data with the given number of entries about raids
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[Raid]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[Raid]>) {
            self.client.send(request: GetRaids(ids: nil, page: page, page_size: page_size), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The titles endpoint client: api.guildwars2.com/v2/titles
    public class TitlesClient : Client {
        
        /// Returns a list of all title ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetTitleIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the title corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the title you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<Title?, APIError>)
        public func get(id: Int, _ completion: @escaping RequestCallback<Title>) {
            self.client.send(request: GetTitle(id: id, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more titles corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the title(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[Title]?, APIError>)
        public func get(ids: [Int], _ completion: @escaping RequestCallback<[Title]>) {
            self.client.send(request: GetTitles(ids: ids, page: nil, page_size: nil, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the given page of paginated data with the given number of entries about titles
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[Title]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[Title]>) {
            self.client.send(request: GetTitles(ids: nil, page: page, page_size: page_size, lang: lang), completion: { result in
                completion(result)
            })
        }
    }
    
    /// The worlds endpoint client: api.guildwars2.com/v2/worlds
    public class WorldsClient : Client {
        
        /// Returns a list of all world ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[Int]>) {
            self.client.send(request: GetWorldIDs(), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the world corresponding to the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the world you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<World?, APIError>)
        public func get(id: Int, _ completion: @escaping RequestCallback<World>) {
            self.client.send(request: GetWorld(id: id, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns one or more worlds corresponding to the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the world(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[World]?, APIError>)
        public func get(ids: [Int], _ completion: @escaping RequestCallback<[World]>) {
            self.client.send(request: GetWorlds(ids: ids, page: nil, page_size: nil, lang: lang), completion: { result in
                completion(result)
            })
        }
        
        /// Returns the given page of paginated data with the given number of entries about worlds
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict this page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[World]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[World]>) {
            self.client.send(request: GetWorlds(ids: nil, page: page, page_size: page_size, lang: lang), completion: { result in
                completion(result)
            })
        }
    }
}
