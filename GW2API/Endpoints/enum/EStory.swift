//
//  EStory.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/13/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

enum EStory {
    case backstoryAnswers
    case backstoryQuestions
    case stories
    case storySeasons
}

extension EStory : Endpoint {
    var path: String {
        switch self {
        case .backstoryAnswers: return "backstory/answers"
        case .backstoryQuestions: return "backstory/questions"
        case .stories: return "stories"
        case .storySeasons: return "stories/seasons"
        }
    }
}
