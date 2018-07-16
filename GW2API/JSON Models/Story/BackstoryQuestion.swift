//
//  BackstoryQuestion.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//backstory/questions
//lang, page, page_size, id, ids
public struct BackstoryQuestion : Decodable {
    let id: Int
    let title: String
    let description: String
    let answers: [String]
    let order: Int
    let races: [String]?
    let professions: [String]?
}
