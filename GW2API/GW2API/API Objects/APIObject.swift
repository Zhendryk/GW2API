//
//  APIObject.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class APIObject {
    
    var type: String
    var session: RequestSession
    var baseURL: URL
    var version: String
    
    init(type: String){
        assert(type != "", "Object needs a valid type to query api")
        self.type = type
        self.version = GW2Client.version
        self.baseURL = GW2Client.baseURL
        self.session = GW2Client.session
    }
    
    fileprivate func getJSON(url: URL? = nil, kwargs:[String:String] = [:]) -> (Data?, URLResponse?, Error?) {
        var requestURL: URL? = url

        if requestURL == nil {
            requestURL = buildAPIEndpointURL()
        }
        var urlStr = requestURL!.absoluteString
        if let name = kwargs["name"] {
            urlStr.append("?name=\(name)")
        }
        if let id = kwargs["id"] {
            urlStr.append("/\(id)")
        }
        if let ids = kwargs["ids"] {
            urlStr.append("?ids=\(ids)")
        }
        if kwargs["page"] != nil || kwargs["page_size"] != nil {
            urlStr.append("?")
        }
        if let page = kwargs["page"] {
            urlStr.append("page=\(page)&")
        }
        if let pageSize = kwargs["page_size"] {
            if let size = Int(pageSize) {
                assert(size > 0 && size <= 200, "Invalid page size")
                urlStr.append("page_size=\(size)")
            }
        }
        urlStr = urlStr.components(separatedBy: CharacterSet.whitespacesAndNewlines).joined()
        requestURL = URL(string: urlStr)
        return self.session.get(url: requestURL!)
    }
    
    fileprivate func buildAPIEndpointURL() -> URL? {
        return URL(string: "\(self.baseURL.absoluteString)/\(self.version)/\(self.type)")
    }
}

class APIV2Object: APIObject {
    override init(type: String) {
        super.init(type: type)
    }
    
    fileprivate func getArr<T>() throws -> [T]? where T : Decodable {
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
    
    fileprivate func get<T>() throws -> T? where T : Decodable {
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
    
    fileprivate func getKW<T>(kwargs: [String:String]) throws -> T? where T : Decodable {
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
    
    fileprivate func getArrKW<T>(kwargs: [String:String]) throws -> [T]? where T : Decodable {
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
    
    fileprivate func addKWToURL(kwargs: [Int:String]) {
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

class V2Achievements: APIV2Object {
    
    let daily = V2AchievementsDaily(type: "achievements/daily")
    let dailyTomorrow = V2AchievementsDailyTomorrow(type: "achievements/daily/tomorrow")
    let groups = V2AchievementsGroups(type: "achievements/groups")
    let categories = V2AchievementsCategories(type: "achievements/categories")
    
    func get() -> [Int]? {
        do {
            let json: [Int]? = try super.getArr()
            return json
        } catch let err {
            print("Error: ", err)
            return nil
        }
    }
    
    func get(kwargs: [String:String]) -> [Achievement]? {
        do {
            if kwargs["id"] != nil && kwargs["ids"] == nil {
                if let json: Achievement = try super.getKW(kwargs: kwargs) {
                    return [json]
                }
                return nil
            }
            else if kwargs["ids"] != nil && kwargs["id"] == nil {
                let json: [Achievement]? = try super.getArrKW(kwargs: kwargs)
                return json
            }
            return nil
        } catch let error {
            print("Error: ", error)
            return nil
        }
    }
    
    class V2AchievementsDaily: APIV2Object {
        func get() -> DailyAchievement? {
            do {
                let json: DailyAchievement? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2AchievementsDailyTomorrow: APIV2Object {
        func get() -> DailyAchievement? {
            do {
                let json: DailyAchievement? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2AchievementsGroups: APIV2Object {
        func get() -> [String]? {
            do {
                let json: [String]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs: [String:String]) -> [AchievementGroup]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: AchievementGroup = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    let json: [AchievementGroup]? = try super.getArrKW(kwargs: kwargs)
                    return json
                }
                return nil
            } catch let error {
                print("Error: ", error)
                return nil
            }
        }
    }
    
    class V2AchievementsCategories: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs: [String:String]) -> [AchievementCategory]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: AchievementCategory = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    let json: [AchievementCategory]? = try super.getArrKW(kwargs: kwargs)
                    return json
                }
                return nil
            } catch let error {
                print("Error: ", error)
                return nil
            }
        }
    }
}

class V2Authenticated {
    let account = V2Account(type: "account")
    
    class V2Account: APIV2Object {
        
        let achievements = V2AccountAchievements(type: "account/achievements")
        let bank = V2AccountBank(type: "account/bank")
        let dungeons = V2AccountDungeons(type: "account/dungeons")
        let dyes = V2AccountDyes(type: "account/dyes")
        let finishers = V2AccountFinishers(type: "account/finishers")
        let gliders = V2AccountGliders(type: "account/gliders")
        let home = V2AccountHome()
        let inventory = V2AccountInventory(type: "account/inventory")
        let mailCarriers = V2AccountMailCarriers(type: "account/mailcarriers")
        let masteries = V2AccountMasteries(type: "account/masteries")
        let masteryPoints = V2AccountMasteryPoints(type: "account/mastery/points")
        let materials = V2AccountMaterials(type: "account/materials")
        let minis = V2AccountMinis(type: "account/minis")
        let outfits = V2AccountOutfits(type: "account/outfits")
        let pvpHeroes = V2AccountPVPHeroes(type: "account/pvp/heroes")
        let raids = V2AccountRaids(type: "account/raids")
        let recipes = V2AccountRecipes(type: "account/recipes")
        let skins = V2AccountSkins(type: "account/skins")
        let titles = V2AccountTitles(type: "account/titles")
        let wallet = V2AccountWallet(type: "account/wallet")
        let characters = V2AccountCharacters(type: "characters")
        let transactions = V2AccountTransactions(type: "commerce/transactions")
        let pvp = V2AccountPVP()
        let tokeninfo = V2AccountTokenInfo(type: "tokeninfo")
        
        func get() -> Account? {
            do {
                let json: Account? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        class V2AccountAchievements: APIV2Object {
            func get() -> [AccountAchievement]? {
                do {
                    let json: [AccountAchievement]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountBank: APIV2Object {
            func get() -> [AccountBankItem]? {
                do {
                    let json: [AccountBankItem]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountDungeons: APIV2Object {
            func get() -> [String]? {
                do {
                    let json: [String]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountDyes: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountFinishers: APIV2Object {
            func get() -> [AccountFinisher]? {
                do {
                    let json: [AccountFinisher]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountGliders: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountHome {
            let cats = V2AccountCats(type: "account/home/cats")
            let nodes = V2AccountNodes(type: "account/home/nodes")
        }
        
        class V2AccountCats: APIV2Object {
            func get() -> [AccountCat]? {
                do {
                    let json: [AccountCat]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountNodes: APIV2Object {
            func get() -> [String]? {
                do {
                    let json: [String]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountInventory: APIV2Object {
            func get() -> [AccountInventoryItem]? {
                do {
                    let json: [AccountInventoryItem]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountMailCarriers: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountMasteries: APIV2Object {
            func get() -> [AccountMastery]? {
                do {
                    let json: [AccountMastery]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountMasteryPoints: APIV2Object {
            func get() -> AccountMasteryPoints? {
                do {
                    let json: AccountMasteryPoints? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountMaterials: APIV2Object {
            func get() -> [AccountMaterial]? {
                do {
                    let json: [AccountMaterial]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountMinis: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountOutfits: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountPVPHeroes: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountRaids: APIV2Object {
            func get() -> [String]? {
                do {
                    let json: [String]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountRecipes: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountSkins: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountTitles: APIV2Object {
            func get() -> [Int]? {
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountWallet: APIV2Object {
            func get() -> [Currency]? {
                do {
                    let json: [Currency]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountCharacters: APIV2Object {
            func get() -> [String]? {
                do {
                    let json: [String]? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
            
            func get(name: String) -> AccountCharacter? {
                super.addKWToURL(kwargs: [2:name])
                do {
                    let json: AccountCharacter? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2AccountTransactions: APIV2Object {
            
        }
        
        class V2AccountPVP {
            let stats = V2AccountPVPStats(type: "pvp/stats")
            let games = V2AccountPVPGames(type: "pvp/games")
            let standings = V2AccountPVPStandings(type: "pvp/standings")
            
            class V2AccountPVPStats: APIV2Object {
                
            }
            
            class V2AccountPVPGames: APIV2Object {
                
            }
            
            class V2AccountPVPStandings: APIV2Object {
                
            }
        }
        
        class V2AccountTokenInfo: APIV2Object {
            
        }
    }
}

class V2GameMechanics {
    
    let masteries = V2GMMasteries(type: "masteries")
    let outfits = V2GMOutfits(type: "outfits")
    let pets = V2GMPets(type: "pets")
    let professions = V2GMProfessions(type: "professions")
    let races = V2GMRaces(type: "races")
    let specializations = V2GMSpecializations(type: "specializations")
    let skills = V2GMSkills(type: "skills")
    let traits = V2GMTraits(type: "traits")
    let legends = V2GMLegends(type: "legends")
    
    class V2GMMasteries: APIV2Object {
        
    }
    
    class V2GMOutfits: APIV2Object {
        
    }
    
    class V2GMPets: APIV2Object {
        
    }
    
    class V2GMProfessions: APIV2Object {
        
    }
    
    class V2GMRaces: APIV2Object {
        
    }
    
    class V2GMSpecializations: APIV2Object {
        
    }
    
    class V2GMSkills: APIV2Object {
        
    }
    
    class V2GMTraits: APIV2Object {
        
    }
    
    class V2GMLegends: APIV2Object {
        
    }
}

class V2Items {
    let finishers = V2ItemsFinishers(type: "finishers")
    let items = V2ItemsItems(type: "items")
    let itemstats = V2ItemsStats(type: "itemstats")
    let materials = V2ItemsMaterials(type: "materials")
    let pvpamulets = V2ItemsPvPAmulets(type: "pvp/amulets")
    let recipes = V2ItemsRecipes(type: "recipes")
    let skins = V2ItemsSkins(type: "skins")
    
    class V2ItemsFinishers: APIV2Object {
        
    }
    
    class V2ItemsItems: APIV2Object {
        
    }
    
    class V2ItemsStats: APIV2Object {
        
    }
    
    class V2ItemsMaterials: APIV2Object {
        
    }
    
    class V2ItemsPvPAmulets: APIV2Object {
        
    }
    
    class V2ItemsRecipes: APIV2Object {
        let search = V2ItemsRecipesSearch(type: "recipes/search")
        
        class V2ItemsRecipesSearch: APIV2Object {
            
        }
    }
    
    class V2ItemsSkins: APIV2Object {
        
    }
}

class V2MapInformation {
    let continents = V2Continents(type: "continents")
    let maps = V2Maps(type: "maps")
    
    class V2Continents: APIV2Object {
        
    }
    
    class V2Maps: APIV2Object {
        
    }
}

class V2Misc {
    let build = V2Build(type: "build")
    let colors = V2Colors(type: "colors")
    let currencies = V2Currencies(type: "currencies")
    let dungeons = V2Dungeons(type: "dungeons")
    let files = V2Files(type: "files")
    let quaggans = V2Quaggans(type: "quaggans")
    let minis = V2Minis(type: "minis")
    let raids = V2Raids(type: "raids")
    let titles = V2Titles(type: "titles")
    let worlds = V2Worlds(type: "worlds")
    
    class V2Build: APIV2Object {
        func get() -> Build? {
            do {
                let json: Build? = try super.get()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2Colors: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs:[String:String]) -> [Colors]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: Colors = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    let json: [Colors]? = try super.getArrKW(kwargs: kwargs)
                    return json
                }
                return nil
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2Currencies: APIV2Object {
        
    }
    
    class V2Dungeons: APIV2Object {
        
    }
    
    class V2Files: APIV2Object {
        
    }
    
    class V2Quaggans: APIV2Object {
        
    }
    
    class V2Minis: APIV2Object {
        
    }
    
    class V2Raids: APIV2Object {
        
    }
    
    class V2Titles: APIV2Object {
        
    }
    
    class V2Worlds: APIV2Object {
        
    }
}

class V2Story {
    let stories = V2Stories(type: "stories")
    let backstory = V2Backstory()
    
    class V2Backstory {
        let answers = V2BackstoryAnswers(type: "backstory/answers")
        let questions = V2BackstoryQuestions(type: "backstory/questions")
        
        class V2BackstoryAnswers: APIV2Object {
            
        }
        
        class V2BackstoryQuestions: APIV2Object {
            
        }
    }
    
    class V2Stories: APIV2Object {
        let seasons = V2StoriesSeasons(type: "stories/seasons")
        
        class V2StoriesSeasons: APIV2Object {
            
        }
    }
}

class V2StructuredPVP: APIV2Object {
    let ranks = V2PVPRanks(type: "pvp/ranks")
    let seasons = V2PVPSeasons(type: "pvp/seasons")
    
    class V2PVPRanks: APIV2Object {
        
    }
    
    class V2PVPSeasons: APIV2Object {
        let leaderboards = V2PVPSeasonsLeaderboards(type: "pvp/seasons/leaderboards")
        
        class V2PVPSeasonsLeaderboards: APIV2Object {
            
        }
    }
}

class V2WVW: APIV2Object {
    let abilities = V2WVWAbilities(type: "wvw/abilities")
    let matches = V2WVWMatches(type: "wvw/matches")
    let objectives = V2WVWObjectives(type: "wvw/objectives")
    let ranks = V2WVWRanks(type: "wvw/ranks")
    let upgrades = V2WVWUpgrades(type: "wvw/upgrades")
    
    class V2WVWAbilities: APIV2Object {
        
    }
    
    class V2WVWMatches: APIV2Object {
        
    }
    
    class V2WVWObjectives: APIV2Object {
        
    }
    
    class V2WVWRanks: APIV2Object {
        
    }
    
    class V2WVWUpgrades: APIV2Object {
        
    }
}

class V2TradingPost {
    let listings = V2CommerceListings(type: "commerce/listings")
    let exchange = V2CommerceExchange()
    let prices = V2CommercePrices(type: "commerce/prices")
    let transactions = V2CommerceTransactions()
    
    class V2CommerceListings: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs:[String:String]) -> [CommerceListing]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: CommerceListing = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [CommerceListing] = try super.getArrKW(kwargs: kwargs) {
                        return json
                    }
                    return nil
                }
                else {
                    return nil
                }
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2CommerceExchange {
        
        let coins = V2CommerceExchangeCoins(type: "commerce/exchange/coins")
        let gems = V2CommerceExchangeGems(type: "commerce/exchange/gems")
        
        class V2CommerceExchangeCoins: APIV2Object {
            func get() -> CommerceExchange? {
                do {
                    let json: CommerceExchange? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2CommerceExchangeGems: APIV2Object {
            func get() -> CommerceExchange? {
                do {
                    let json: CommerceExchange? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
    }
    
    class V2CommercePrices: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs:[String:String]) -> [CommercePrices]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: CommercePrices = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [CommercePrices] = try super.getArrKW(kwargs: kwargs) {
                        return json
                    }
                    return nil
                }
                else {
                    return nil
                }
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2CommerceTransactions {
        
        let current = V2CommerceTransactionCurrent()
        let history = V2CommerceTransactionHistory()
        
        class V2CommerceTransactionCurrent {
            let buys = V2CommTransCurrBuys(type: "commerce/transactions/current/buys")
            let sells = V2CommTransCurrSells(type: "commerce/transactions/current/sells")
            
            class V2CommTransCurrBuys: APIV2Object {
                func get() -> [Transaction]? {
                    do {
                        let json: [Transaction]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
            
            class V2CommTransCurrSells: APIV2Object {
                func get() -> [Transaction]? {
                    do {
                        let json: [Transaction]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
        }
        
        class V2CommerceTransactionHistory {
            let buys = V2CommTransHistBuys(type: "commerce/transactions/history/buys")
            let sells = V2CommTransHistSells(type: "commerce/transactions/history/sells")
            
            class V2CommTransHistBuys: APIV2Object {
                func get() -> [Transaction]? {
                    do {
                        let json: [Transaction]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
            
            class V2CommTransHistSells: APIV2Object {
                func get() -> [Transaction]? {
                    do {
                        let json: [Transaction]? = try super.getArr()
                        return json
                    } catch let err {
                        print("Error: ", err)
                        return nil
                    }
                }
            }
        }
    }
}

class V2Guild {
    let authenticated = V2GuildAuthenticated(type: "guild/")
    let permissions = V2GuildPermissions(type: "guild/permissions")
    let search = V2GuildSearch(type: "guild/search")
    let upgrades = V2GuildUpgrades(type: "guild/upgrades")
    
    class V2GuildAuthenticated: APIV2Object {
        
        let log = V2GuildLog(type: "guild/log")
        let members = V2GuildMembers(type: "guild/members")
        let ranks = V2GuildRanks(type: "guild/ranks")
        let stash = V2GuildStash(type: "guild/stash")
        let treasury = V2GuildTreasury(type: "guild/treasury")
        let teams = V2GuildTeams(type: "guild/teams")
        let upgrades = V2GuildUG(type: "guild/upgrades")
        
        //Must be called with an ID parameter
        func get(kwargs: [String:String]) -> GuildDetails? {
            do {
                let json: GuildDetails? = try super.getKW(kwargs: kwargs)
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        //Each of these below needs a single kwarg get so "guild/:id/log etc"
        class V2GuildLog: APIV2Object {
            func get(id: String) -> GuildLog? {
                super.addKWToURL(kwargs: [2:id])
                do {
                    let json: GuildLog? = try super.get()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2GuildMembers: APIV2Object {
            func get(id: String) -> [GuildMember]? {
                super.addKWToURL(kwargs: [2:id])
                do {
                    let json: [GuildMember]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2GuildRanks: APIV2Object {
            func get(id: String) -> [GuildRank]? {
                super.addKWToURL(kwargs: [2:id])
                do {
                    let json: [GuildRank]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2GuildStash: APIV2Object {
            func get(id: String) -> [GuildStash]? {
                super.addKWToURL(kwargs: [2:id])
                do {
                    let json: [GuildStash]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2GuildTreasury: APIV2Object {
            func get(id: String) -> [GuildTreasury]? {
                super.addKWToURL(kwargs: [2:id])
                do {
                    let json: [GuildTreasury]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2GuildTeams: APIV2Object {
            func get(id: String) -> [GuildTeam]? {
                super.addKWToURL(kwargs: [2:id])
                do {
                    let json: [GuildTeam]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
        
        class V2GuildUG: APIV2Object {
            func get(id: String) -> [Int]? {
                super.addKWToURL(kwargs: [2:id])
                do {
                    let json: [Int]? = try super.getArr()
                    return json
                } catch let err {
                    print("Error: ", err)
                    return nil
                }
            }
        }
    }
    
    class V2GuildPermissions: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs:[String:String]) -> [Permissions]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: Permissions = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [Permissions] = try super.getArrKW(kwargs: kwargs) {
                        return json
                    }
                    return nil
                }
                else {
                    return nil
                }
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2GuildSearch: APIV2Object {
        func get(name: String) -> String? {
            do {
                let json: String? = try super.getKW(kwargs: ["name":name])
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
    
    class V2GuildUpgrades: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs:[String:String]) -> [GuildUpgrade]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: GuildUpgrade = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [GuildUpgrade] = try super.getArrKW(kwargs: kwargs) {
                        return json
                    }
                    return nil
                }
                else {
                    return nil
                }
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
}

class V2Emblem {
    
    let foregrounds = V2GuildEmblemForegrounds(type: "emblem/foregrounds")
    let backgrounds = V2GuildEmblemBackgrounds(type: "emblem/backgrounds")
    
    class V2GuildEmblemForegrounds: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs: [String:String]) -> [GuildEmblem]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: GuildEmblem = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [GuildEmblem] = try super.getArrKW(kwargs: kwargs) {
                        return json
                    }
                    return nil
                }
                else {
                    return nil
                }
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
    }
    
    class V2GuildEmblemBackgrounds: APIV2Object {
        func get() -> [Int]? {
            do {
                let json: [Int]? = try super.getArr()
                return json
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
        
        func get(kwargs: [String:String]) -> [GuildEmblem]? {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    if let json: GuildEmblem = try super.getKW(kwargs: kwargs) {
                        return [json]
                    }
                    return nil
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    if let json: [GuildEmblem] = try super.getArrKW(kwargs: kwargs) {
                        return json
                    }
                    return nil
                }
                else {
                    return nil
                }
            } catch let err {
                print("Error: ", err)
                return nil
            }
        }
    }
}
