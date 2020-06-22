//
//  GameMechanicsEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import APIClient

class GetMasteryIDs: GetRequest<[Int]> {
    init(lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/masteries", urlQueryParameters: urlQP)
    }
}

class GetMastery: GetRequest<Mastery> {
    init(lang: String? = nil, id: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        super.init(resource: "/masteries", urlQueryParameters: urlQP)
    }
}

class GetMasteries: GetRequest<[Mastery]> {
    init(lang: String? = nil, ids: [Int]? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        super.init(resource: "/masteries", urlQueryParameters: urlQP)
    }
}

class GetOutfitIDs: GetRequest<[Int]> {
    init(lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/outfits", urlQueryParameters: urlQP)
    }
}

class GetOutfit: GetRequest<Outfit> {
    init(lang: String? = nil, id: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        super.init(resource: "/outfits", urlQueryParameters: urlQP)
    }
}

class GetOutfits: GetRequest<[Outfit]> {
    init(lang: String? = nil, ids: [Int]? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        super.init(resource: "/outfits", urlQueryParameters: urlQP)
    }
}

class GetPetIDs: GetRequest<[Int]> {
    init(lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/pets", urlQueryParameters: urlQP)
    }
}

class GetPet: GetRequest<Pet> {
    init(lang: String? = nil, id: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        super.init(resource: "/pets", urlQueryParameters: urlQP)
    }
}

class GetPets: GetRequest<[Pet]> {
    init(lang: String? = nil, ids: [Int]? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        super.init(resource: "/pets", urlQueryParameters: urlQP)
    }
}

class GetProfessionIDs: GetRequest<[String]> {
    init(lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/professions", urlQueryParameters: urlQP)
    }
}

class GetProfession: GetRequest<Profession> {
    init(lang: String? = nil, id: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        super.init(resource: "/professions", urlQueryParameters: urlQP)
    }
}

class GetProfessions: GetRequest<[Profession]> {
    init(lang: String? = nil, ids: [String]? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description))
        }
        super.init(resource: "/professions", urlQueryParameters: urlQP)
    }
}

class GetRaceIDs: GetRequest<[String]> {
    init(lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/races", urlQueryParameters: urlQP)
    }
}

class GetRace: GetRequest<Race> {
    init(lang: String? = nil, id: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        super.init(resource: "/races", urlQueryParameters: urlQP)
    }
}

class GetRaces: GetRequest<[Race]> {
    init(lang: String? = nil, ids: [String]? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description))
        }
        super.init(resource: "/races", urlQueryParameters: urlQP)
    }
}

class GetSpecializationIDs: GetRequest<[Int]> {
    init(lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/specializations", urlQueryParameters: urlQP)
    }
}

class GetSpecialization: GetRequest<Specialization> {
    init(lang: String? = nil, id: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        super.init(resource: "/specializations", urlQueryParameters: urlQP)
    }
}

class GetSpecializations: GetRequest<[Specialization]> {
    init(lang: String? = nil, ids: [Int]? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        super.init(resource: "/specializations", urlQueryParameters: urlQP)
    }
}

class GetAllSpecializations: GetRequest<[Specialization]> {
    init(lang: String? = nil) {
        var urlQP: [URLQueryItem] = [URLQueryItem(name: "ids", value: HTTPParameter.string("all").description)]
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/specializations", urlQueryParameters: urlQP)
    }
}

class GetSkillIDs: GetRequest<[Int]> {
    init(lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/skills", urlQueryParameters: urlQP)
    }
}

class GetSkill: GetRequest<Skill> {
    init(lang: String? = nil, id: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        super.init(resource: "/skills", urlQueryParameters: urlQP)
    }
}

class GetSkills: GetRequest<[Skill]> {
    init(lang: String? = nil, ids: [Int]? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        super.init(resource: "/skills", urlQueryParameters: urlQP)
    }
}

class GetTraitIDs: GetRequest<[Int]> {
    init(lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/traits", urlQueryParameters: urlQP)
    }
}

class GetTrait: GetRequest<Trait> {
    init(lang: String? = nil, id: Int? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        super.init(resource: "/traits", urlQueryParameters: urlQP)
    }
}

class GetTraits: GetRequest<[Trait]> {
    init(lang: String? = nil, ids: [Int]? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        super.init(resource: "/traits", urlQueryParameters: urlQP)
    }
}

class GetLegendIDs: GetRequest<[String]> {
    init(lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/legends", urlQueryParameters: urlQP)
    }
}

class GetLegend: GetRequest<Legend> {
    init(lang: String? = nil, id: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        super.init(resource: "/legends", urlQueryParameters: urlQP)
    }
}

class GetLegends: GetRequest<[Legend]> {
    init(lang: String? = nil, ids: [String]? = nil) {
        var urlQP: [URLQueryItem] = []
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description))
        }
        super.init(resource: "/legends", urlQueryParameters: urlQP)
    }
}
