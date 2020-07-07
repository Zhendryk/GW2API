//
//  BackstoryAnswer.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//backstory/answers
//lang, page, page_size, id, ids
public struct BackstoryAnswer : Decodable, Identifiable {
    public let id: String
    public let title: String
    public let description: String
    public let journal: String
    public let professions: [String]?
    public let races: [String]?
}
