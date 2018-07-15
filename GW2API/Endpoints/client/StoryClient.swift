//
//  StoryClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/13/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

/// The stories endpoint client: api.guildwars2.com/v2/stories
class StoryClient : Client {
    
    /// The backstory endpoint: information about biography questions and answers presented during character creation
    let backstory: BackstoryClient = BackstoryClient()
    
    /// The stories seasons endpoint: information about the story seasons in the Story Journal
    let seasons: SeasonsClient = SeasonsClient()
    
    /// Sets the language for every sub endpoint
    ///
    /// - Parameter language: The language to set
    override func setLanguage(_ language: String) {
        self.lang = language
        self.backstory.setLanguage(language)
        self.seasons.setLanguage(language)
    }
    
    /// Returns a list of all story ids
    ///
    /// - Parameter completion: Callback function to handle the data returned from the API (Result<[Int]?, APIError>)
    func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
        fetchAsync(with: EStory.stories.request, decode: { json -> [Int]? in
            guard let res = json as? [Int] else { return nil }
            return res
        }, completion: completion)
    }
    
    /// Returns the story associated with the given id
    ///
    /// - Parameters:
    ///   - id: The id of the story you are searching for
    ///   - completion: Callback function to handle the data returned from the API (Result<Story?, APIError>)
    func get(id: Int, completion: @escaping (Result<Story?, APIError>) -> Void) {
        fetchAsync(with: EStory.stories.idRequest(id: String(id)), decode: { json -> Story? in
            guard let res = json as? Story else { return nil }
            return res
        }, completion: completion)
    }
    
    /// Returns one or more stories associated with the given ids
    ///
    /// - Parameters:
    ///   - ids: The id(s) of the story(s) you are searching for
    ///   - completion: Callback function to handle the data returned from the API (Result<[Story]?, APIError>)
    func get(ids: [Int], completion: @escaping (Result<[Story]?, APIError>) -> Void) {
        fetchAsync(with: EStory.stories.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [Story]? in
            guard let res = json as? [Story] else { return nil }
            return res
        }, completion: completion)
    }
    
    /// Returns the specified page of paginated information with the given number of entries about stories
    ///
    /// - Parameters:
    ///   - page: The page number of paginated information
    ///   - page_size: The number of entries to restrict the page to
    ///   - completion: Callback function to handle the data returned from the API (Result<[Story]?, APIError>)
    func get(page: Int, page_size: Int, completion: @escaping (Result<[Story]?, APIError>) -> Void) {
        fetchAsync(with: EStory.stories.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [Story]? in
            guard let res = json as? [Story] else { return nil }
            return res
        }, completion: completion)
    }
    
    
    /// The backstory endpoint client: api.guildwars2.com/v2/backstory
    class BackstoryClient : Client {
        
        /// The backstory answers endpoint: information about biography answers presented during character creation
        let answers: AnswersClient = AnswersClient()
        
        /// The backstory questions endpoint: information about biography questions presented during character creation
        let questions: QuestionsClient = QuestionsClient()
        
        /// The backstory answers endpoint client: api.guildwars2.com/v2/backstory/answers
        class AnswersClient : Client {
            
            /// Returns a list of all backstory answer ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
            func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
                fetchAsync(with: EStory.backstoryAnswers.request, decode: { json -> [String]? in
                    guard let res = json as? [String] else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the backstory answer associated with the given id
            ///
            /// - Parameters:
            ///   - id: The id of the backstory answer you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<BackstoryAnswer?, APIError>)
            func get(id: String, completion: @escaping (Result<BackstoryAnswer?, APIError>) -> Void) {
                fetchAsync(with: EStory.backstoryAnswers.idRequest(id: id), decode: { json -> BackstoryAnswer? in
                    guard let res = json as? BackstoryAnswer else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns one or more backstory answers associated with the given ids
            ///
            /// - Parameters:
            ///   - ids: The id(s) of the backstory answer(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<[BackstoryAnswer]?, APIError>)
            func get(ids: [String], completion: @escaping (Result<[BackstoryAnswer]?, APIError>) -> Void) {
                fetchAsync(with: EStory.backstoryAnswers.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.strArrToList(ids))], decode: { json -> [BackstoryAnswer]? in
                    guard let res = json as? [BackstoryAnswer] else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the specified page of paginated information with the given number of entries about backstory answers
            ///
            /// - Parameters:
            ///   - page: The page number of paginated information
            ///   - page_size: The number of entries to restrict the page to
            ///   - completion: Callback function to handle the data returned from the API (Result<[BackstoryAnswer]?, APIError>)
            func get(page: Int, page_size: Int, completion: @escaping (Result<[BackstoryAnswer]?, APIError>) -> Void) {
                fetchAsync(with: EStory.backstoryAnswers.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [BackstoryAnswer]? in
                    guard let res = json as? [BackstoryAnswer] else { return nil }
                    return res
                }, completion: completion)
            }
        }
        
        /// The backstory questions client: api.guildwars2.com/v2/backstory/questions
        class QuestionsClient : Client {
            
            /// Returns a list of all backstory question ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
            func get(completion: @escaping (Result<[Int]?, APIError>) -> Void) {
                fetchAsync(with: EStory.backstoryQuestions.request, decode: { json -> [Int]? in
                    guard let res = json as? [Int] else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the backstory question associated with the given id
            ///
            /// - Parameters:
            ///   - id: The id of the backstory question you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<BackstoryQuestion?, APIError>)
            func get(id: Int, completion: @escaping (Result<BackstoryQuestion?, APIError>) -> Void) {
                fetchAsync(with: EStory.backstoryQuestions.idRequest(id: String(id)), decode: { json -> BackstoryQuestion? in
                    guard let res = json as? BackstoryQuestion else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns one or more backstory questions associated with the given ids
            ///
            /// - Parameters:
            ///   - ids: The id(s) of the backstory question(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<[BackstoryQuestion]?, APIError>)
            func get(ids: [Int], completion: @escaping (Result<[BackstoryQuestion]?, APIError>) -> Void) {
                fetchAsync(with: EStory.backstoryQuestions.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.intArrToStrList(ids))], decode: { json -> [BackstoryQuestion]? in
                    guard let res = json as? [BackstoryQuestion] else { return nil }
                    return res
                }, completion: completion)
            }
            
            /// Returns the specified page of paginated information with the given number of entries about backstory questions
            ///
            /// - Parameters:
            ///   - page: The page number of paginated information
            ///   - page_size: The number of entries to restrict the page to
            ///   - completion: Callback function to handle the data returned from the API (Result<[BackstoryQuestion]?, APIError>)
            func get(page: Int, page_size: Int, completion: @escaping (Result<[BackstoryQuestion]?, APIError>) -> Void) {
                fetchAsync(with: EStory.backstoryQuestions.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [BackstoryQuestion]? in
                    guard let res = json as? [BackstoryQuestion] else { return nil }
                    return res
                }, completion: completion)
            }
        }
    }
    
    /// The stories seasons client: api.guildwars2.com/v2/stories/seasons
    class SeasonsClient : Client {
        
        /// Returns a list of all story season ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        func get(completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: EStory.storySeasons.request, decode: { json -> [String]? in
                guard let res = json as? [String] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the story season associated with the given id
        ///
        /// - Parameters:
        ///   - id: The id of the story season you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<StorySeason?, APIError>)
        func get(id: String, completion: @escaping (Result<StorySeason?, APIError>) -> Void) {
            fetchAsync(with: EStory.storySeasons.idRequest(id: id), decode: { json -> StorySeason? in
                guard let res = json as? StorySeason else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns one or more story seasons associated with the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the story season(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[StorySeason]?, APIError>)
        func get(ids: [String], completion: @escaping (Result<[StorySeason]?, APIError>) -> Void) {
            fetchAsync(with: EStory.storySeasons.request, parameters: [URLQueryItem(name: "ids", value: APIUtil.strArrToList(ids))], decode: { json -> [StorySeason]? in
                guard let res = json as? [StorySeason] else { return nil }
                return res
            }, completion: completion)
        }
        
        /// Returns the specified page of paginated information with the given number of entries about story seasons
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict the page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[StorySeason]?, APIError>)
        func get(page: Int, page_size: Int, completion: @escaping (Result<[StorySeason]?, APIError>) -> Void) {
            fetchAsync(with: EStory.storySeasons.request, parameters: [URLQueryItem(name: "page", value: String(page)), URLQueryItem(name: "page_size", value: String(page_size))], decode: { json -> [StorySeason]? in
                guard let res = json as? [StorySeason] else { return nil }
                return res
            }, completion: completion)
        }
    }
}
