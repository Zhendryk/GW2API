//
//  GameMechanicsClient.swift
//  GW2API
//
//  Created by Zhendryk on 7/6/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//
import Swift_Generic_API_Client

/// The game mechanics endpoint client: api.guildwars2.com/v2/...
public class GameMechanicsClient : Client {
    
    /// The game mechanics masteries endpoint: information about masteries
    public let masteries: GameMechanicsMasteriesClient = GameMechanicsMasteriesClient()
    
    /// The game mechanics outfits endpoint: information about outfits
    public let outfits: GameMechanicsOutfitsClient = GameMechanicsOutfitsClient()
    
    /// The game mechanics pets endpoint: information about pets
    public let pets: GameMechanicsPetsClient = GameMechanicsPetsClient()
    
    /// The game mechanics professions endpoint: information about professions
    public let professions: GameMechanicsProfessionsClient = GameMechanicsProfessionsClient()
    
    /// The game mechanics races endpoint: information about races and particular racial skills
    public let races: GameMechanicsRacesClient = GameMechanicsRacesClient()
    
    /// The game mechanics specializations endpoint: information about specializations
    public let specializations: GameMechanicsSpecializationsClient = GameMechanicsSpecializationsClient()
    
    /// The game mechanics skills endpoint: information about skills
    public let skills: GameMechanicsSkillsClient = GameMechanicsSkillsClient()
    
    /// The game mechanics traits endpoint: information about traits
    public let traits: GameMechanicsTraitsClient = GameMechanicsTraitsClient()
    
    /// The game mechanics legends endpoint: information about revenant legends
    public let legends: GameMechanicsLegendsClient = GameMechanicsLegendsClient()
    
    /// The game mechanics masteries endpoint client: api.guildwars2.com/v2/masteries
    public class GameMechanicsMasteriesClient : Client {
        
        /// Returns the list of all available mastery ids
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping RequestCallback<[Int]>) {
            _ = self.client.send(request: GetMasteryIDs(lang: self.lang)) { result in
                completion(result)
            }
        }
        
        /// Returns the mastery referenced by the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the mastery you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<GMMasteries?, APIError>)
        public func get(id: Int, completion: @escaping RequestCallback<Mastery>) {
            _ = self.client.send(request: GetMastery(lang: self.lang, id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns information on multiple masteries referenced by the given IDs
        ///
        /// - Parameters:
        ///   - ids: The IDs of the masteries you are looking for "id1, id2, id3... etc"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMMasteries]?, APIError>)
        public func get(ids: [Int], completion: @escaping RequestCallback<[Mastery]>) {
            _ = self.client.send(request: GetMasteries(lang: self.lang, ids: ids)) { result in
                completion(result)
            }
        }
    }
    
    /// The game mechanics outfits endpoint client: api.guildwars2.com/v2/outfits
    public class GameMechanicsOutfitsClient : Client {
        
        /// Returns the list of all available outfit ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping RequestCallback<[Int]>) {
            _ = self.client.send(request: GetOutfitIDs(lang: self.lang)) { result in
                completion(result)
            }
        }
        
        /// Returns the outfit referenced by the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the outfit you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<GMOutfit?, APIError>)
        public func get(id: Int, completion: @escaping RequestCallback<Outfit>) {
            _ = self.client.send(request: GetOutfit(lang: self.lang, id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns information on multiple outfits referenced by the given IDs
        ///
        /// - Parameters:
        ///   - ids: The IDs of the outfits you are looking for "id1, id2, id3... etc"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMOutfit]?, APIError>)
        public func get(ids: [Int], completion: @escaping RequestCallback<[Outfit]>) {
            _ = self.client.send(request: GetOutfits(lang: self.lang, ids: ids)) { result in
                completion(result)
            }
        }
    }
    
    /// The game mechanics pets endpoint client: api.guildwars2.com/v2/pets
    public class GameMechanicsPetsClient : Client {
        
        /// Returns the list of all available pet ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping RequestCallback<[Int]>) {
            _ = self.client.send(request: GetPetIDs(lang: self.lang)) { result in
                completion(result)
            }
        }
        
        /// Returns the pet referenced by the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the pet you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<GMPet?, APIError>)
        public func get(id: Int, completion: @escaping RequestCallback<Pet>) {
            _ = self.client.send(request: GetPet(lang: self.lang, id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns information on multiple pets referenced by the given IDs
        ///
        /// - Parameters:
        ///   - ids: The IDs of the pets you are looking for "id1, id2, id3... etc"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMPet]?, APIError>)
        public func get(ids: [Int], completion: @escaping RequestCallback<[Pet]>) {
            _ = self.client.send(request: GetPets(lang: self.lang, ids: ids)) { result in
                completion(result)
            }
        }
    }
    
    /// The game mechanics professions endpoint client: api.guildwars2.com/v2/professions
    public class GameMechanicsProfessionsClient : Client {
        
        /// Returns the list of all available professions
        ///
        /// - Parameters:
        ///   - completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(completion: @escaping RequestCallback<[String]>) {
            _ = self.client.send(request: GetProfessionIDs(lang: self.lang)) { result in
                completion(result)
            }
        }

        /// Returns the profession referenced by the given name (capitalized)
        ///
        /// - Parameters:
        ///   - id: The name of the profession you are looking for (capitalized)
        ///   - completion: Callback function to handle the data returned from the API (Result<GMProfession?, APIError>)
        public func get(id: String, completion: @escaping RequestCallback<Profession>) {
            _ = self.client.send(request: GetProfession(lang: self.lang, id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns information on multiple professions referenced by the given names (capitalized)
        ///
        /// - Parameters:
        ///   - ids: The names of the professions you are looking for (capitalized) "Profession1, Profession2... etc"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMProfession]?, APIError>)
        public func get(ids: [String], completion: @escaping RequestCallback<[Profession]>) {
            _ = self.client.send(request: GetProfessions(lang: self.lang, ids: ids)) { result in
                completion(result)
            }
        }
    }
    
    /// The game mechanics races endpoint client: api.guildwars2.com/v2/races
    public class GameMechanicsRacesClient : Client {
        
        /// Returns the list of all available races
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(completion: @escaping RequestCallback<[String]>) {
            _ = self.client.send(request: GetRaceIDs(lang: self.lang)) { result in
                completion(result)
            }
        }
        
        /// Returns the race referenced by the given name (capitalized)
        ///
        /// - Parameters:
        ///   - id: The name of the race you are looking for (capitalized)
        ///   - completion: Callback function to handle the data returned from the API (Result<GMRace?, APIError>)
        public func get(id: String, completion: @escaping RequestCallback<Race>) {
            _ = self.client.send(request: GetRace(lang: self.lang, id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns information on multiple races referenced by the given names (capitalized)
        ///
        /// - Parameters:
        ///   - ids: The names of the races you are looking for (capitalized) "Race1, Race2... etc"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMRace]?, APIError>)
        public func get(ids: [String], completion: @escaping RequestCallback<[Race]>) {
            _ = self.client.send(request: GetRaces(lang: self.lang, ids: ids)) { result in
                completion(result)
            }
        }
    }
    
    /// The game mechanics specializations endpoint client: api.guildwars2.com/v2/specializations
    public class GameMechanicsSpecializationsClient : Client {
        
        /// Returns the list of all available specialization ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping RequestCallback<[Int]>) {
            _ = self.client.send(request: GetSpecializationIDs(lang: self.lang)) { result in
                completion(result)
            }
        }
        
        /// Returns the specialization referenced by the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the specialization you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<GMSpecialization?, APIError>)
        public func get(id: Int, completion: @escaping RequestCallback<Specialization>) {
            _ = self.client.send(request: GetSpecialization(lang: self.lang, id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns information on multiple specializations referenced by the given IDs
        ///
        /// - Parameters:
        ///   - ids: The IDs of the specializations you are looking for "id1, id2, id3... etc"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMSpecialization]?, APIError>)
        public func get(ids: [Int], completion: @escaping RequestCallback<[Specialization]>) {
            _ = self.client.send(request: GetSpecializations(lang: self.lang, ids: ids)) { result in
                completion(result)
            }
        }
    }
    
    /// The game mechanics skills endpoint client: api.guildwars2.com/v2/skills
    public class GameMechanicsSkillsClient : Client {
        
        /// Returns the list of all available skill ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping RequestCallback<[Int]>) {
            _ = self.client.send(request: GetSkillIDs(lang: self.lang)) { result in
                completion(result)
            }
        }
        
        /// Returns the skill referenced by the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the skill you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<GMSkill?, APIError>)
        public func get(id: Int, completion: @escaping RequestCallback<Skill>) {
            _ = self.client.send(request: GetSkill(lang: self.lang, id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns information on multiple skills referenced by the given IDs
        ///
        /// - Parameters:
        ///   - ids: The IDs of the skills you are looking for "id1, id2, id3... etc"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMSkill]?, APIError>)
        public func get(ids: [Int], completion: @escaping RequestCallback<[Skill]>) {
            _ = self.client.send(request: GetSkills(lang: self.lang, ids: ids)) { result in
                completion(result)
            }
        }
    }
    
    /// The game mechanics traits endpoint client: api.guildwars2.com/v2/traits
    public class GameMechanicsTraitsClient : Client {
        
        /// Returns the list of all available trait ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
        public func get(completion: @escaping RequestCallback<[Int]>) {
            _ = self.client.send(request: GetTraitIDs(lang: self.lang)) { result in
                completion(result)
            }
        }
        
        /// Returns the trait referenced by the given ID
        ///
        /// - Parameters:
        ///   - id: The ID of the trait you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<GMTrait?, APIError>)
        public func get(id: Int, completion: @escaping RequestCallback<Trait>) {
            _ = self.client.send(request: GetTrait(lang: self.lang, id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns information on multiple traits referenced by the given IDs
        ///
        /// - Parameters:
        ///   - ids: The IDs of the traits you are looking for "id1, id2, id3... etc"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMTrait]?, APIError>)
        public func get(ids: [Int], completion: @escaping RequestCallback<[Trait]>) {
            _ = self.client.send(request: GetTraits(lang: self.lang, ids: ids)) { result in
                completion(result)
            }
        }
    }
    
    /// The game mechanics legends endpoint client: api.guildwars2.com/v2/legends
    public class GameMechanicsLegendsClient : Client {
        
        /// Returns the list of all available legend ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(completion: @escaping RequestCallback<[String]>) {
            _ = self.client.send(request: GetLegendIDs(lang: self.lang)) { result in
                completion(result)
            }
        }
        
        /// Returns the legend referenced by the given ID (capitalized)
        ///
        /// - Parameters:
        ///   - id: The ID of the legend you are looking for
        ///   - completion: Callback function to handle the data returned from the API (Result<GMLegend?, APIError>)
        public func get(id: String, completion: @escaping RequestCallback<Legend>) {
            _ = self.client.send(request: GetLegend(lang: self.lang, id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns information on multiple legends referenced by the given IDs (capitalized)
        ///
        /// - Parameters:
        ///   - ids: The IDs of the legends you are looking for "Legend1, Legend2, Legend3... etc"
        ///   - completion: Callback function to handle the data returned from the API (Result<[GMLegend]?, APIError>)
        public func get(ids: [String], completion: @escaping RequestCallback<[Legend]>) {
            _ = self.client.send(request: GetLegends(lang: self.lang, ids: ids)) { result in
                completion(result)
            }
        }
    }
}
