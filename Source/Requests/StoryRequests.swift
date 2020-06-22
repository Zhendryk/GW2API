//
//  StoryEP.swift
//  GW2API
//
//  Created by Jonathan Bailey on 9/7/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation
import APIClient

class GetStoryIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/stories")
    }
}

class GetStory: GetRequest<Story> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/stories", urlQueryParameters: urlQP)
    }
}

class GetStories: GetRequest<[Story]> {
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/stories", urlQueryParameters: urlQP)
    }
}



class GetStorySeasonIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/stories/seasons")
    }
}

class GetStorySeason: GetRequest<StorySeason> {
    init(id: String? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/stories/seasons", urlQueryParameters: urlQP)
    }
}

class GetStorySeasons: GetRequest<[StorySeason]> {
    init(ids: [String]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/stories/seasons", urlQueryParameters: urlQP)
    }
}

class GetBackstoryAnswerIDs: GetRequest<[String]> {
    init() {
        super.init(resource: "/backstory/answers")
    }
}

class GetBackstoryAnswer: GetRequest<BackstoryAnswer> {
    init(id: String? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.string(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/backstory/answers", urlQueryParameters: urlQP)
    }
}

class GetBackstoryAnswers: GetRequest<[BackstoryAnswer]> {
    init(ids: [String]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.stringArr(ids).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/backstory/answers", urlQueryParameters: urlQP)
    }
}

class GetBackstoryQuestionIDs: GetRequest<[Int]> {
    init() {
        super.init(resource: "/backstory/questions")
    }
}

class GetBackstoryQuestion: GetRequest<BackstoryQuestion> {
    init(id: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let id = id {
            urlQP.append(URLQueryItem(name: "id", value: HTTPParameter.int(id).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/backstory/questions", urlQueryParameters: urlQP)
    }
}

class GetBackstoryQuestions: GetRequest<[BackstoryQuestion]> {
    init(ids: [Int]? = nil, page: Int? = nil, page_size: Int? = nil, lang: String? = nil) {
        var urlQP: [URLQueryItem] = []
        if let ids = ids {
            urlQP.append(URLQueryItem(name: "ids", value: HTTPParameter.intArr(ids).description))
        }
        if let page = page {
            urlQP.append(URLQueryItem(name: "page", value: HTTPParameter.int(page).description))
        }
        if let page_size = page_size {
            urlQP.append(URLQueryItem(name: "page_size", value: HTTPParameter.int(page_size).description))
        }
        if let lang = lang {
            urlQP.append(URLQueryItem(name: "lang", value: HTTPParameter.string(lang).description))
        }
        super.init(resource: "/backstory/questions", urlQueryParameters: urlQP)
    }
}
