//
//  Story.swift
//  GW2API
//
//  Created by Zhendryk on 7/10/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

//stories
//lang, page, page_size, id, ids
struct Story : Decodable {
    let id: Int
    let season: String
    let name: String
    let description: String
    let timeline: String
    let level: Int
    let order: Int
    let chapters: [StoryChapter]
    let races: [String]?
    let flags: [String]?
    
    struct StoryChapter : Decodable {
        let name: String
    }
}
