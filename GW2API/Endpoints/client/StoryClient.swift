//
//  StoryClient.swift
//  GW2API
//
//  Created by Zhendryk on 7/13/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//

import GenericAPIClient

/// The stories endpoint client: api.guildwars2.com/v2/stories
public class StoryClient : Client {
    
    /// The backstory endpoint: information about biography questions and answers presented during character creation
    public let backstory: BackstoryClient = BackstoryClient()
    
    /// The stories seasons endpoint: information about the story seasons in the Story Journal
    public let seasons: SeasonsClient = SeasonsClient()
    
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
    public func get(_ completion: @escaping RequestCallback<[Int]>) {
        _ = self.client.send(request: GetStoryIDs()) { result in
            completion(result)
        }
    }
    
    /// Returns the story associated with the given id
    ///
    /// - Parameters:
    ///   - id: The id of the story you are searching for
    ///   - completion: Callback function to handle the data returned from the API (Result<Story?, APIError>)
    public func get(id: Int, _ completion: @escaping RequestCallback<Story>) {
        _ = self.client.send(request: GetStory(id: id)) { result in
            completion(result)
        }
    }
    
    /// Returns one or more stories associated with the given ids
    ///
    /// - Parameters:
    ///   - ids: The id(s) of the story(s) you are searching for
    ///   - completion: Callback function to handle the data returned from the API (Result<[Story]?, APIError>)
    public func get(ids: [Int], _ completion: @escaping RequestCallback<[Story]>) {
        _ = self.client.send(request: GetStories(ids: ids, page: nil, page_size: nil)) { result in
            completion(result)
        }
    }
    
    /// Returns the specified page of paginated information with the given number of entries about stories
    ///
    /// - Parameters:
    ///   - page: The page number of paginated information
    ///   - page_size: The number of entries to restrict the page to
    ///   - completion: Callback function to handle the data returned from the API (Result<[Story]?, APIError>)
    public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[Story]>) {
        _ = self.client.send(request: GetStories(ids: nil, page: page, page_size: page_size)) { result in
            completion(result)
        }
    }
    
    
    /// The backstory endpoint client: api.guildwars2.com/v2/backstory
    public class BackstoryClient : Client {
        
        /// The backstory answers endpoint: information about biography answers presented during character creation
        public let answers: AnswersClient = AnswersClient()
        
        /// The backstory questions endpoint: information about biography questions presented during character creation
        public let questions: QuestionsClient = QuestionsClient()
        
        /// The backstory answers endpoint client: api.guildwars2.com/v2/backstory/answers
        public class AnswersClient : Client {
            
            /// Returns a list of all backstory answer ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
            public func get(_ completion: @escaping RequestCallback<[String]>) {
                _ = self.client.send(request: GetBackstoryAnswerIDs()) { result in
                    completion(result)
                }
            }
            
            /// Returns the backstory answer associated with the given id
            ///
            /// - Parameters:
            ///   - id: The id of the backstory answer you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<BackstoryAnswer?, APIError>)
            public func get(id: String, _ completion: @escaping RequestCallback<BackstoryAnswer>) {
                _ = self.client.send(request: GetBackstoryAnswer(id: id)) { result in
                    completion(result)
                }
            }
            
            /// Returns one or more backstory answers associated with the given ids
            ///
            /// - Parameters:
            ///   - ids: The id(s) of the backstory answer(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<[BackstoryAnswer]?, APIError>)
            public func get(ids: [String], _ completion: @escaping RequestCallback<[BackstoryAnswer]>) {
                _ = self.client.send(request: GetBackstoryAnswers(ids: ids, page: nil, page_size: nil)) { result in
                    completion(result)
                }
            }
            
            /// Returns the specified page of paginated information with the given number of entries about backstory answers
            ///
            /// - Parameters:
            ///   - page: The page number of paginated information
            ///   - page_size: The number of entries to restrict the page to
            ///   - completion: Callback function to handle the data returned from the API (Result<[BackstoryAnswer]?, APIError>)
            public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[BackstoryAnswer]>) {
                _ = self.client.send(request: GetBackstoryAnswers(ids: nil, page: page, page_size: page_size)) { result in
                    completion(result)
                }
            }
        }
        
        /// The backstory questions client: api.guildwars2.com/v2/backstory/questions
        public class QuestionsClient : Client {
            
            /// Returns a list of all backstory question ids
            ///
            /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
            public func get(_ completion: @escaping RequestCallback<[Int]>) {
                _ = self.client.send(request: GetBackstoryQuestionIDs()) { result in
                    completion(result)
                }
            }
            
            /// Returns the backstory question associated with the given id
            ///
            /// - Parameters:
            ///   - id: The id of the backstory question you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<BackstoryQuestion?, APIError>)
            public func get(id: Int, _ completion: @escaping RequestCallback<BackstoryQuestion>) {
                _ = self.client.send(request: GetBackstoryQuestion(id: id)) { result in
                    completion(result)
                }
            }
            
            /// Returns one or more backstory questions associated with the given ids
            ///
            /// - Parameters:
            ///   - ids: The id(s) of the backstory question(s) you are searching for
            ///   - completion: Callback function to handle the data returned from the API (Result<[BackstoryQuestion]?, APIError>)
            public func get(ids: [Int], _ completion: @escaping RequestCallback<[BackstoryQuestion]>) {
                _ = self.client.send(request: GetBackstoryQuestions(ids: ids, page: nil, page_size: nil)) { result in
                    completion(result)
                }
            }
            
            /// Returns the specified page of paginated information with the given number of entries about backstory questions
            ///
            /// - Parameters:
            ///   - page: The page number of paginated information
            ///   - page_size: The number of entries to restrict the page to
            ///   - completion: Callback function to handle the data returned from the API (Result<[BackstoryQuestion]?, APIError>)
            public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[BackstoryQuestion]>) {
                _ = self.client.send(request: GetBackstoryQuestions(ids: nil, page: page, page_size: page_size)) { result in
                    completion(result)
                }
            }
        }
    }
    
    /// The stories seasons client: api.guildwars2.com/v2/stories/seasons
    public class SeasonsClient : Client {
        
        /// Returns a list of all story season ids
        ///
        /// - Parameter completion: Callback function to handle the data returned from the API (Result<[String]?, APIError>)
        public func get(_ completion: @escaping RequestCallback<[String]>) {
            _ = self.client.send(request: GetStorySeasonIDs()) { result in
                completion(result)
            }
        }
        
        /// Returns the story season associated with the given id
        ///
        /// - Parameters:
        ///   - id: The id of the story season you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<StorySeason?, APIError>)
        public func get(id: String, _ completion: @escaping RequestCallback<StorySeason>) {
            _ = self.client.send(request: GetStorySeason(id: id)) { result in
                completion(result)
            }
        }
        
        /// Returns one or more story seasons associated with the given ids
        ///
        /// - Parameters:
        ///   - ids: The id(s) of the story season(s) you are searching for
        ///   - completion: Callback function to handle the data returned from the API (Result<[StorySeason]?, APIError>)
        public func get(ids: [String], _ completion: @escaping RequestCallback<[StorySeason]>) {
            _ = self.client.send(request: GetStorySeasons(ids: ids, page: nil, page_size: nil)) { result in
                completion(result)
            }
        }
        
        /// Returns the specified page of paginated information with the given number of entries about story seasons
        ///
        /// - Parameters:
        ///   - page: The page number of paginated information
        ///   - page_size: The number of entries to restrict the page to
        ///   - completion: Callback function to handle the data returned from the API (Result<[StorySeason]?, APIError>)
        public func get(page: Int, page_size: Int, _ completion: @escaping RequestCallback<[StorySeason]>) {
            _ = self.client.send(request: GetStorySeasons(ids: nil, page: page, page_size: page_size)) { result in
                completion(result)
            }
        }
    }
}
