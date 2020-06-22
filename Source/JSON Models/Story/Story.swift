//
//  Story.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/10/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

//stories
//lang, page, page_size, id, ids
public struct Story : Decodable {
    public let id: Int
    public let season: String
    public let name: String
    public let description: String
    public let timeline: String
    public let level: Int
    public let order: Int
    public let chapters: [StoryChapter]
    public let races: [String]?
    public let flags: [String]?
    
    public struct StoryChapter : Decodable {
        public let name: String
    }
}
