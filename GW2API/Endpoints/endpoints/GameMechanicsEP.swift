//
//  GameMechanicsEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Swift_Generic_API_Client

struct GetMasteryIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/masteries" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case lang
    }
    
    init(lang: String? = nil) {
        self.lang = lang
    }
}

struct GetMastery: APIRequest {
    typealias Response = Mastery
    
    var resource: String { return "/masteries" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case id
    }
    
    init(lang: String? = nil, id: Int? = nil) {
        self.id = id
    }
}

struct GetMasteries: APIRequest {
    typealias Response = [Mastery]
    
    var resource: String { return "/masteries" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case ids
    }
    
    init(lang: String? = nil, ids: [Int]? = nil) {
        self.lang = lang
        self.ids = ids
    }
}

struct GetOutfitIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/outfits" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case lang
    }
    
    init(lang: String? = nil) {
        self.lang = lang
    }
}

struct GetOutfit: APIRequest {
    typealias Response = Outfit
    
    var resource: String { return "/outfits" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case id
    }
    
    init(lang: String? = nil, id: Int? = nil) {
        self.id = id
    }
}

struct GetOutfits: APIRequest {
    typealias Response = [Outfit]
    
    var resource: String { return "/outfits" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case ids
    }
    
    init(lang: String? = nil, ids: [Int]? = nil) {
        self.lang = lang
        self.ids = ids
    }
}

struct GetPetIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/pets" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case lang
    }
    
    init(lang: String? = nil) {
        self.lang = lang
    }
}

struct GetPet: APIRequest {
    typealias Response = Pet
    
    var resource: String { return "/pets" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case id
    }
    
    init(lang: String? = nil, id: Int? = nil) {
        self.id = id
    }
}

struct GetPets: APIRequest {
    typealias Response = [Pet]
    
    var resource: String { return "/pets" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case ids
    }
    
    init(lang: String? = nil, ids: [Int]? = nil) {
        self.lang = lang
        self.ids = ids
    }
}

struct GetProfessionIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/professions" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case lang
    }
    
    init(lang: String? = nil) {
        self.lang = lang
    }
}

struct GetProfession: APIRequest {
    typealias Response = Profession
    
    var resource: String { return "/professions" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var id: String?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case id
    }
    
    init(lang: String? = nil, id: String? = nil) {
        self.id = id
    }
}

struct GetProfessions: APIRequest {
    typealias Response = [Profession]
    
    var resource: String { return "/professions" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var ids: [String]?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case ids
    }
    
    init(lang: String? = nil, ids: [String]? = nil) {
        self.lang = lang
        self.ids = ids
    }
}

struct GetRaceIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/races" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case lang
    }
    
    init(lang: String? = nil) {
        self.lang = lang
    }
}

struct GetRace: APIRequest {
    typealias Response = Race
    
    var resource: String { return "/races" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var id: String?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case id
    }
    
    init(lang: String? = nil, id: String? = nil) {
        self.id = id
    }
}

struct GetRaces: APIRequest {
    typealias Response = [Race]
    
    var resource: String { return "/races" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var ids: [String]?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case ids
    }
    
    init(lang: String? = nil, ids: [String]? = nil) {
        self.lang = lang
        self.ids = ids
    }
}

struct GetSpecializationIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/specializations" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case lang
    }
    
    init(lang: String? = nil) {
        self.lang = lang
    }
}

struct GetSpecialization: APIRequest {
    typealias Response = Specialization
    
    var resource: String { return "/specializations" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case id
    }
    
    init(lang: String? = nil, id: Int? = nil) {
        self.id = id
    }
}

struct GetSpecializations: APIRequest {
    typealias Response = [Specialization]
    
    var resource: String { return "/specializations" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case ids
    }
    
    init(lang: String? = nil, ids: [Int]? = nil) {
        self.lang = lang
        self.ids = ids
    }
}

struct GetSkillIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/skills" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case lang
    }
    
    init(lang: String? = nil) {
        self.lang = lang
    }
}

struct GetSkill: APIRequest {
    typealias Response = Skill
    
    var resource: String { return "/skills" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case id
    }
    
    init(lang: String? = nil, id: Int? = nil) {
        self.id = id
    }
}

struct GetSkills: APIRequest {
    typealias Response = [Skill]
    
    var resource: String { return "/skills" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case ids
    }
    
    init(lang: String? = nil, ids: [Int]? = nil) {
        self.lang = lang
        self.ids = ids
    }
}

struct GetTraitIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/traits" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case lang
    }
    
    init(lang: String? = nil) {
        self.lang = lang
    }
}

struct GetTrait: APIRequest {
    typealias Response = Trait
    
    var resource: String { return "/traits" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var id: Int?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case id
    }
    
    init(lang: String? = nil, id: Int? = nil) {
        self.id = id
    }
}

struct GetTraits: APIRequest {
    typealias Response = [Trait]
    
    var resource: String { return "/traits" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var ids: [Int]?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case ids
    }
    
    init(lang: String? = nil, ids: [Int]? = nil) {
        self.lang = lang
        self.ids = ids
    }
}

struct GetLegendIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/legends" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case lang
    }
    
    init(lang: String? = nil) {
        self.lang = lang
    }
}

struct GetLegend: APIRequest {
    typealias Response = Legend
    
    var resource: String { return "/legends" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var id: String?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case id
    }
    
    init(lang: String? = nil, id: String? = nil) {
        self.id = id
    }
}

struct GetLegends: APIRequest {
    typealias Response = [Legend]
    
    var resource: String { return "/legends" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var lang: String?
    private var ids: [String]?
    
    private enum CodingKeys: String, CodingKey {
        case lang
        case ids
    }
    
    init(lang: String? = nil, ids: [String]? = nil) {
        self.lang = lang
        self.ids = ids
    }
}
