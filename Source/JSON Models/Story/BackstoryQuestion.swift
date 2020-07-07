//
//  BackstoryQuestion.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//backstory/questions
//lang, page, page_size, id, ids
public struct BackstoryQuestion : Decodable, Identifiable {
    public let id: Int
    public let title: String
    public let description: String
    public let answers: [String]
    public let order: Int
    public let races: [String]?
    public let professions: [String]?
}
