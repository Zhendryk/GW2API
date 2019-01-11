//
//  StoryEP.swift
//  GW2API
//
//  Created by Zhendryk on 9/7/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

import GenericAPIClient

struct GetStoryIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/stories" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetStory: APIRequest {
    typealias Response = Story
    
    var resource: String { return "/stories" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: Int? = nil, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetStories: APIRequest {
    typealias Response = [Story]
    
    var resource: String { return "/stories" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    private var page: Int?
    private var page_size: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
        case lang
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
        self.lang = lang
    }
}

struct GetBackstoryAnswerIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/backstory/answers" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetBackstoryAnswer: APIRequest {
    typealias Response = BackstoryAnswer
    
    var resource: String { return "/backstory/answers" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: String?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: String? = nil, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetBackstoryAnswers: APIRequest {
    typealias Response = [BackstoryAnswer]
    
    var resource: String { return "/backstory/answers" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [String]?
    private var page: Int?
    private var page_size: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
        case lang
    }
    
    init(ids: [String]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
        self.lang = lang
    }
}

struct GetBackstoryQuestionIDs: APIRequest {
    typealias Response = [Int]
    
    var resource: String { return "/backstory/questions" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetBackstoryQuestion: APIRequest {
    typealias Response = BackstoryQuestion
    
    var resource: String { return "/backstory/questions" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: Int? = nil, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetBackstoryQuestions: APIRequest {
    typealias Response = [BackstoryQuestion]
    
    var resource: String { return "/backstory/questions" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [Int]?
    private var page: Int?
    private var page_size: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
        case lang
    }
    
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
        self.lang = lang
    }
}

struct GetStorySeasonIDs: APIRequest {
    typealias Response = [String]
    
    var resource: String { return "/stories/seasons" }
    var overrideEncoding: Bool { return true }
    var extraPathComponents: [String] = []
    
    init(){}
}

struct GetStorySeason: APIRequest {
    typealias Response = StorySeason
    
    var resource: String { return "/stories/seasons" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var id: String?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case lang
    }
    
    init(id: String? = nil, lang: String? = nil) {
        self.id = id
        self.lang = lang
    }
}

struct GetStorySeasons: APIRequest {
    typealias Response = [StorySeason]
    
    var resource: String { return "/stories/seasons" }
    var overrideEncoding: Bool { return false }
    var extraPathComponents: [String] = []
    
    private var ids: [String]?
    private var page: Int?
    private var page_size: Int?
    private var lang: String?
    
    private enum CodingKeys: String, CodingKey {
        case ids
        case page
        case page_size
        case lang
    }
    
    init(ids: [String]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        self.ids = ids
        self.page = page
        self.page_size = page_size
        self.lang = lang
    }
}
