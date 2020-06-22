//
//  AccountBuildStorageTemplate.swift
//  APIClient
//
//  Created by Jonathan Bailey on 6/22/20.
//

public struct BuildStorageTemplate: Decodable {
    let name: String
    let profession: String
    let specializations: [BuildStorageTemplateSpecialization]
    let skills: BuildStorageTemplateSkills
    let aquatic_skills: BuildStorageTemplateSkills
    let legends: [Int]?
    let aquatic_legends: [Int]?
    

    public struct BuildStorageTemplateSpecialization: Decodable {
        let id: Int
        let traits: [Int]
    }

    public struct BuildStorageTemplateSkills: Decodable {
        let heal: Int?
        let utilities: [Int?]
        let elite: Int?
    }
}
