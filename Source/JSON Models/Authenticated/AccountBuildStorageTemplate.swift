//
//  AccountBuildStorageTemplate.swift
//  APIClient
//
//  Created by Jonathan Bailey on 6/22/20.
//

public struct BuildStorageTemplate: Decodable {
    public let name: String
    public let profession: String
    public let specializations: [BuildStorageTemplateSpecialization]
    public let skills: BuildStorageTemplateSkills
    public let aquatic_skills: BuildStorageTemplateSkills
    public let legends: [Int]?
    public let aquatic_legends: [Int]?
    

    public struct BuildStorageTemplateSpecialization: Decodable, Identifiable {
        public let id: Int
        public let traits: [Int]
    }

    public struct BuildStorageTemplateSkills: Decodable {
        public let heal: Int?
        public let utilities: [Int?]
        public let elite: Int?
    }
}
