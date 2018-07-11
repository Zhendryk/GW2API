//
//  BackstoryQuestion.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//backstory/questions
//lang, page, page_size, id, ids
struct BackstoryQuestion : Decodable {
    let id: Int
    let title: String
    let description: String
    let answers: [Int]
    let order: Int
    let races: [String]
    let professions: [String]
}
