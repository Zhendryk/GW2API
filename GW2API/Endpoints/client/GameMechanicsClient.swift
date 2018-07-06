//
//  GameMechanicsClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/6/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class GameMechanicsClient : Client {
    
    let masteries: GameMechanicsMasteriesClient = GameMechanicsMasteriesClient()
    let outfits: GameMechanicsOutfitsClient = GameMechanicsOutfitsClient()
    let pets: GameMechanicsPetsClient = GameMechanicsPetsClient()
    let professions: GameMechanicsProfessionsClient = GameMechanicsProfessionsClient()
    let races: GameMechanicsRacesClient = GameMechanicsRacesClient()
    let specializations: GameMechanicsSpecializationsClient = GameMechanicsSpecializationsClient()
    let skills: GameMechanicsSkillsClient = GameMechanicsSkillsClient()
    let traits: GameMechanicsTraitsClient = GameMechanicsTraitsClient()
    let legends: GameMechanicsLegendsClient = GameMechanicsLegendsClient()
    
    class GameMechanicsMasteriesClient : Client {
        
        func get(from endpoint: EGameMechanics = .masteries, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        func get(id: URLQueryItem, from endpoint: EGameMechanics = .masteries, completion: @escaping (Result<GMMasteries?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [id])
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
        
        func get(ids: URLQueryItem, from endpoint: EGameMechanics = .masteries, completion: @escaping (Result<[GMMasteries]?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [ids])
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
    
    class GameMechanicsOutfitsClient : Client {
        func get(from endpoint: EGameMechanics = .outfits, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        func get(id: URLQueryItem, from endpoint: EGameMechanics = .outfits, completion: @escaping (Result<GMOutfit?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [id])
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
        
        func get(ids: URLQueryItem, from endpoint: EGameMechanics = .outfits, completion: @escaping (Result<[GMOutfit]?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [ids])
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
    
    class GameMechanicsPetsClient : Client {
        func get(from endpoint: EGameMechanics = .pets, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        func get(id: URLQueryItem, from endpoint: EGameMechanics = .pets, completion: @escaping (Result<GMPet?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [id])
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
        
        func get(ids: URLQueryItem, from endpoint: EGameMechanics = .pets, completion: @escaping (Result<[GMPet]?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [ids])
            switch request {
            case .success(let result):
                fetchAsync(with: result, decode: { json -> [GMPet]? in
                    guard let res = json as? [GMPet] else { return nil }
                    return res
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }
        }
    }
    
    class GameMechanicsProfessionsClient : Client {
        func get(from endpoint: EGameMechanics = .professions, completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }
        
        //TODO: Test this one, might not need ?id=_, could just be /professionname
        func get(id: URLQueryItem, from endpoint: EGameMechanics = .professions, completion: @escaping (Result<GMProfession?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [id])
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
        
        func get(ids: URLQueryItem, from endpoint: EGameMechanics = .professions, completion: @escaping (Result<[GMProfession]?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [ids])
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
    
    class GameMechanicsRacesClient : Client {
        func get(from endpoint: EGameMechanics = .races, completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }
        
        func get(id: URLQueryItem, from endpoint: EGameMechanics = .races, completion: @escaping (Result<GMRace?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [id])
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
        
        func get(ids: URLQueryItem, from endpoint: EGameMechanics = .races, completion: @escaping (Result<[GMRace]?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [ids])
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
    
    class GameMechanicsSpecializationsClient : Client {
        func get(from endpoint: EGameMechanics = .specializations, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        func get(id: URLQueryItem, from endpoint: EGameMechanics = .specializations, completion: @escaping (Result<GMSpecialization?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [id])
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
        
        func get(ids: URLQueryItem, from endpoint: EGameMechanics = .specializations, completion: @escaping (Result<[GMSpecialization]?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [ids])
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
    
    class GameMechanicsSkillsClient : Client {
        func get(from endpoint: EGameMechanics = .skills, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        func get(id: URLQueryItem, from endpoint: EGameMechanics = .skills, completion: @escaping (Result<GMSkill?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [id])
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
        
        func get(ids: URLQueryItem, from endpoint: EGameMechanics = .skills, completion: @escaping (Result<[GMSkill]?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [ids])
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
    
    class GameMechanicsTraitsClient : Client {
        func get(from endpoint: EGameMechanics = .traits, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
        
        func get(id: URLQueryItem, from endpoint: EGameMechanics = .traits, completion: @escaping (Result<GMTrait?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [id])
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
        
        func get(ids: URLQueryItem, from endpoint: EGameMechanics = .traits, completion: @escaping (Result<[GMTrait]?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [ids])
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
    
    class GameMechanicsLegendsClient : Client {
        func get(from endpoint: EGameMechanics = .legends, completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }
        
        func get(id: URLQueryItem, from endpoint: EGameMechanics = .legends, completion: @escaping (Result<GMLegend?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [id])
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
        
        func get(ids: URLQueryItem, from endpoint: EGameMechanics = .legends, completion: @escaping (Result<[GMLegend]?, APIError>) -> Void) {
            let request = addQueryParameters(to: endpoint.request, parameters: [ids])
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
