//
//  BackstoryAnswer.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//backstory/answers
//lang, page, page_size, id, ids
struct BackstoryAnswer : Decodable {
    let id: String
    let title: String
    let description: String
    let journal: String
    let professions: [String]
    let races: [String]
}
