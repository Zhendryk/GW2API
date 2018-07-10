//
//  Story.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

struct Story : Decodable {
    let id: Int
    let season: String
    let name: String
    let description: String
    let timeline: String
    let level: Int
    let order: Int
    let chapters: [storyChapter]
    let races: [String]
    let flags: [String]
    
    struct storyChapter : Decodable {
        let name: String
    }
}
