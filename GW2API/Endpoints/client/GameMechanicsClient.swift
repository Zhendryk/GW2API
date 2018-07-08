//
//  GameMechanicsClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/6/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

/// The game mechanics endpoint client: api.guildwars2.com/v2/...
class GameMechanicsClient : Client {
    
    /// The game mechanics masteries endpoint: api.guildwars2.com/v2/masteries
    let masteries: GameMechanicsMasteriesClient = GameMechanicsMasteriesClient()
    
    /// The game mechanics outfits endpoint: api.guildwars2.com/v2/outfits
    let outfits: GameMechanicsOutfitsClient = GameMechanicsOutfitsClient()
    
    /// The game mechanics pets endpoint: api.guildwars2.com/v2/pets
    let pets: GameMechanicsPetsClient = GameMechanicsPetsClient()
    
    /// The game mechanics professions endpoint: api.guildwars2.com/v2/professions
    let professions: GameMechanicsProfessionsClient = GameMechanicsProfessionsClient()
    
    /// The game mechanics races endpoint: api.guildwars2.com/v2/races
    let races: GameMechanicsRacesClient = GameMechanicsRacesClient()
    
    /// The game mechanics specializations endpoint: api.guildwars2.com/v2/specializations
    let specializations: GameMechanicsSpecializationsClient = GameMechanicsSpecializationsClient()
    
    /// The game mechanics skills endpoint: api.guildwars2.com/v2/skills
    let skills: GameMechanicsSkillsClient = GameMechanicsSkillsClient()
    
    /// The game mechanics traits endpoint: api.guildwars2.com/v2/traits
    let traits: GameMechanicsTraitsClient = GameMechanicsTraitsClient()
    
    /// The game mechanics legends endpoint: api.guildwars2.com/v2/legends
    let legends: GameMechanicsLegendsClient = GameMechanicsLegendsClient()
    
    /// The game mechanics masteries endpoint client: api.guildwars2.com/v2/masteries
    class GameMechanicsMasteriesClient : Client {
        
        /// Returns the list of all available mastery ids
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EGameMechanics.masteries.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        /// Returns the mastery referenced by the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the mastery you are looking for, URLQueryItem(name: "id", value: "masteryID")
        ///   - completion: Callback function to handle the data returned from the API (Result<GMMasteries?, APIError>)
        func get(id: URLQueryItem, completion: @escaping (Result<GMMasteries?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.masteries.request, parameters: [id])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> GMMasteries? in
                    guard let res = json as? GMMasteries else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
        
        /// Returns information on multiple masteries referenced by the given IDs
        ///
        /// - Parameters:
        ///   - ids: The IDs of the masteries you are looking for, URLQueryItem(name: "ids", value: "id1, id2, id3... etc)"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMMasteries]?, APIError>)
        func get(ids: URLQueryItem, completion: @escaping (Result<[GMMasteries]?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.masteries.request, parameters: [ids])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> [GMMasteries]? in
                    guard let res = json as? [GMMasteries] else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
    }
    
    /// The game mechanics outfits endpoint client: api.guildwars2.com/v2/outfits
    class GameMechanicsOutfitsClient : Client {
        
        /// Returns the list of all available outfit ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EGameMechanics.outfits.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        /// Returns the outfit referenced by the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the outfit you are looking for, URLQueryItem(name: "id", value: "outfitID")
        ///   - completion: Callback function to handle the data returned from the API (Result<GMOutfit?, APIError>)
        func get(id: URLQueryItem, completion: @escaping (Result<GMOutfit?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.outfits.request, parameters: [id])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> GMOutfit? in
                    guard let res = json as? GMOutfit else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
        
        /// Returns information on multiple outfits referenced by the given IDs
        ///
        /// - Parameters:
        ///   - ids: The IDs of the outfits you are looking for, URLQueryItem(name: "ids", value: "id1, id2, id3... etc)"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMOutfit]?, APIError>)
        func get(ids: URLQueryItem, completion: @escaping (Result<[GMOutfit]?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.outfits.request, parameters: [ids])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> [GMOutfit]? in
                    guard let res = json as? [GMOutfit] else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
    }
    
    /// The game mechanics pets endpoint client: api.guildwars2.com/v2/pets
    class GameMechanicsPetsClient : Client {
        
        /// Returns the list of all available pet ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EGameMechanics.pets.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        /// Returns the pet referenced by the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the pet you are looking for, URLQueryItem(name: "id", value: "petID")
        ///   - completion: Callback function to handle the data returned from the API (Result<GMPet?, APIError>)
        func get(id: URLQueryItem, completion: @escaping (Result<GMPet?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.pets.request, parameters: [id])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> GMPet? in
                    guard let res = json as? GMPet else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
        
        /// Returns information on multiple pets referenced by the given IDs
        ///
        /// - Parameters:
        ///   - ids: The IDs of the pets you are looking for, URLQueryItem(name: "ids", value: "id1, id2, id3... etc)"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMPet]?, APIError>)
        func get(ids: URLQueryItem, completion: @escaping (Result<[GMPet]?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.pets.request, parameters: [ids])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> [GMPet]? in
                    guard let res = json as? [GMPet] else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error.localizedDescription)
                return
            }
        }
    }
    
    /// The game mechanics professions endpoint client: api.guildwars2.com/v2/professions
    class GameMechanicsProfessionsClient : Client {
        
        /// Returns the list of all available professions
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: EGameMechanics.professions.request, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }

        /// Returns the profession referenced by the given name (capitalized)
        ///
        /// - Parameters:
        ///   - id: The name of the profession you are looking for (capitalized), URLQueryItem(name: "id", value: "Professionname")
        ///   - completion: Callback function to handle the data returned from the API (Result<GMProfession?, APIError>)
        func get(id: URLQueryItem, completion: @escaping (Result<GMProfession?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.professions.request, parameters: [id])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> GMProfession? in
                    guard let res = json as? GMProfession else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
        
        /// Returns information on multiple professions referenced by the given names (capitalized)
        ///
        /// - Parameters:
        ///   - ids: The names of the professions you are looking for (capitalized), URLQueryItem(name: "ids", value: "Profession1, Profession2... etc)"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMProfession]?, APIError>)
        func get(ids: URLQueryItem, completion: @escaping (Result<[GMProfession]?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.professions.request, parameters: [ids])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> [GMProfession]? in
                    guard let res = json as? [GMProfession] else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
    }
    
    /// The game mechanics races endpoint client: api.guildwars2.com/v2/races
    class GameMechanicsRacesClient : Client {
        
        /// Returns the list of all available races
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: EGameMechanics.races.request, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }
        
        /// Returns the race referenced by the given name (capitalized)
        ///
        /// - Parameters:
        ///   - id: The name of the race you are looking for (capitalized), URLQueryItem(name: "id", value: "Racename")
        ///   - completion: Callback function to handle the data returned from the API (Result<GMRace?, APIError>)
        func get(id: URLQueryItem, completion: @escaping (Result<GMRace?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.races.request, parameters: [id])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> GMRace? in
                    guard let res = json as? GMRace else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
        
        /// Returns information on multiple races referenced by the given names (capitalized)
        ///
        /// - Parameters:
        ///   - ids: The names of the races you are looking for (capitalized), URLQueryItem(name: "ids", value: "Race1, Race2... etc")
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMRace]?, APIError>)
        func get(ids: URLQueryItem, completion: @escaping (Result<[GMRace]?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.races.request, parameters: [ids])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> [GMRace]? in
                    guard let res = json as? [GMRace] else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
    }
    
    /// The game mechanics specializations endpoint client: api.guildwars2.com/v2/specializations
    class GameMechanicsSpecializationsClient : Client {
        
        /// Returns the list of all available specialization ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EGameMechanics.specializations.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        /// Returns the specialization referenced by the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the specialization you are looking for, URLQueryItem(name: "id", value: "specializationID")
        ///   - completion: Callback function to handle the data returned from the API (Result<GMSpecialization?, APIError>)
        func get(id: URLQueryItem, completion: @escaping (Result<GMSpecialization?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.specializations.request, parameters: [id])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> GMSpecialization? in
                    guard let res = json as? GMSpecialization else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
        
        /// Returns information on multiple specializations referenced by the given IDs
        ///
        /// - Parameters:
        ///   - ids: The IDs of the specializations you are looking for, URLQueryItem(name: "ids", value: "id1, id2, id3... etc)"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMSpecialization]?, APIError>)
        func get(ids: URLQueryItem, completion: @escaping (Result<[GMSpecialization]?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.specializations.request, parameters: [ids])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> [GMSpecialization]? in
                    guard let res = json as? [GMSpecialization] else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
    }
    
    /// The game mechanics skills endpoint client: api.guildwars2.com/v2/skills
    class GameMechanicsSkillsClient : Client {
        
        /// Returns the list of all available skill ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EGameMechanics.skills.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        /// Returns the skill referenced by the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the skill you are looking for, URLQueryItem(name: "id", value: "skillID")
        ///   - completion: Callback function to handle the data returned from the API (Result<GMSkill?, APIError>)
        func get(id: URLQueryItem, completion: @escaping (Result<GMSkill?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.skills.request, parameters: [id])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> GMSkill? in
                    guard let res = json as? GMSkill else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
        
        /// Returns information on multiple skills referenced by the given IDs
        ///
        /// - Parameters:
        ///   - ids: The IDs of the skills you are looking for, URLQueryItem(name: "ids", value: "id1, id2, id3... etc)"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMSkill]?, APIError>)
        func get(ids: URLQueryItem, completion: @escaping (Result<[GMSkill]?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.skills.request, parameters: [ids])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> [GMSkill]? in
                    guard let res = json as? [GMSkill] else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
    }
    
    /// The game mechanics traits endpoint client: api.guildwars2.com/v2/traits
    class GameMechanicsTraitsClient : Client {
        
        /// Returns the list of all available trait ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: EGameMechanics.traits.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        /// Returns the trait referenced by the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the trait you are looking for, URLQueryItem(name: "id", value: "traitID")
        ///   - completion: Callback function to handle the data returned from the API (Result<GMTrait?, APIError>)
        func get(id: URLQueryItem, completion: @escaping (Result<GMTrait?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.traits.request, parameters: [id])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> GMTrait? in
                    guard let res = json as? GMTrait else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
        
        /// Returns information on multiple traits referenced by the given IDs
        ///
        /// - Parameters:
        ///   - ids: The IDs of the traits you are looking for, URLQueryItem(name: "ids", value: "id1, id2, id3... etc)"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMTrait]?, APIError>)
        func get(ids: URLQueryItem, completion: @escaping (Result<[GMTrait]?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.traits.request, parameters: [ids])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> [GMTrait]? in
                    guard let res = json as? [GMTrait] else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
    }
    
    /// The game mechanics legends endpoint client: api.guildwars2.com/v2/legends
    class GameMechanicsLegendsClient : Client {
        
        /// Returns the list of all available legend ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: EGameMechanics.legends.request, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }
        
        /// Returns the legend referenced by the given ID (capitalized)
        ///
        /// - Parameters:
        ///   - id: The ID of the legend you are looking for, URLQueryItem(name: "id", value: "LegendID")
        ///   - completion: Callback function to handle the data returned from the API (Result<GMLegend?, APIError>)
        func get(id: URLQueryItem, completion: @escaping (Result<GMLegend?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.legends.request, parameters: [id])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> GMLegend? in
                    guard let res = json as? GMLegend else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
        
        /// Returns information on multiple legends referenced by the given IDs (capitalized)
        ///
        /// - Parameters:
        ///   - ids: The IDs of the legends you are looking for, URLQueryItem(name: "ids", value: "Legend1, Legend2, Legend3... etc)"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMLegend]?, APIError>)
        func get(ids: URLQueryItem, completion: @escaping (Result<[GMLegend]?, APIError>) -> Void) {
            let request = addQueryParameters(to: EGameMechanics.legends.request, parameters: [ids])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> [GMLegend]? in
                    guard let res = json as? [GMLegend] else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
    }
}
