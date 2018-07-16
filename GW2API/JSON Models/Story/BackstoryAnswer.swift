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
    let id: String
    let title: String
    let description: String
    let journal: String
    let professions: [String]?
    let races: [String]?
}
