//
//  BackstoryAnswer.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//backstory/answers
//lang, page, page_size, id, ids
public struct BackstoryAnswer : Decodable {
    public let id: String
    public let title: String
    public let description: String
    public let journal: String
    public let professions: [String]?
    public let races: [String]?
}
