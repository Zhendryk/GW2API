//
//  APIClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/2/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//


/// The protocol for all endpoint clients to conform to
protocol APIClient {
    var session: URLSession { get }
    func fetchAsync<T: Decodable>(with request: URLRequest, needsAuthorization: Bool, needsGuildID: Bool, parameters: [URLQueryItem], decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)
}


// MARK: - Extension to APIClient protocol, adds JSONTaskCompletionHandler typealias
extension APIClient {
    typealias JSONTaskCompletionHandler = (Decodable?, APIError?) -> Void
}


/// The base class for all endpoint clients
class Client : APIClient {

    /// The URLSession to interact with the API server for this client
    var session: URLSession
    
    /// The API key assigned to this client (synced between all when set from GW2Client.instance)
    var apiKey: String? = nil
    
    /// The guild ID assigned to this client (synced between all when set from GW2Client.instance)
    var guildID: String? = nil
    
    /// The language in which all data will be received in
    var lang: String = "en"
    
    /// Initializes this client with a custom URLSessionConfiguration
    ///
    /// - Parameter configuration: A custom URLSessionConfiguration
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    /// Initializes this client with the default URLSessionConfiguration
    convenience init() {
        self.init(configuration: .default)
    }
    
    /// Takes a valid API key as a string and sets it to this client (synced between all if set from GW2Client.instance)
    ///
    /// - Parameter key: A valid API key generated from guildwars2.com
    func setAPIKey(_ key: String) {
        self.apiKey = key
    }
    
    /// Sets the guild ID for this client
    ///
    /// - Parameter id: The ID of the guild you wish to query for
    func setGuildID(_ id: String) {
        self.guildID = id
    }
    
    /// Set the language for this client
    ///
    /// - Parameter language: The language you wish to recieve data in. Possible values: en, es, de, fr, ko, zh
    func setLanguage(_ language: String) {
        self.lang = language
    }
    
    /// Fetches JSON data for any given endpoint from the GuildWars 2 API
    ///
    /// - Parameters:
    ///   - request: URLRequest for the API endpoint
    ///   - needsAuthorization: If the endpoint requires an API key to be accessed
    ///   - needsGuildID: If the endpoint requires a guild ID to be accessed
    ///   - parameters: Any endpoint parameters you wish to add to the request
    ///   - decode: Callback function to parse the JSON into a generic decodable object
    ///   - completion: Callback function to handle the JSON data in the form of Result<T, APIError>
    func fetchAsync<T: Decodable>(with request: URLRequest, needsAuthorization: Bool = false, needsGuildID: Bool = false, parameters: [URLQueryItem] = [], decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void) {
        var finalQuery = request
        let preparedQuery = prepareQuery(query: request, needsAuthorization: needsAuthorization, needsGuildID: needsGuildID, parameters: parameters)
        switch preparedQuery {
        case .success(let result):
            finalQuery = result
        case .failure(let error):
            print(error.localizedDescription)
            return
        }
        let task = decodingTask(with: finalQuery, decodingType: T.self) { (json, error) in
            DispatchQueue.main.async {
                guard let json = json else {
                    if let error = error {
                        completion(Result.failure(error))
                    } else {
                        completion(Result.failure(.invalidData))
                    }
                    return
                }
                if let value = decode(json) {
                    completion(.success(value))
                } else {
                    completion(.failure(.jsonParsingFailure))
                }
            }
        }
        task.resume()
    }
    
    /// URLSession data task to decode JSON data
    ///
    /// - Parameters:
    ///   - request: The URLRequest that is getting the JSON data
    ///   - decodingType: The type of data to decode
    ///   - completion: Callback function to handle (Decodable?, APIError?) -> Void
    /// - Returns: URLSessionDataTask to be used by fetchAsync function
    private func decodingTask<T: Decodable>(with request: URLRequest, decodingType: T.Type, completionHandler completion: @escaping JSONTaskCompletionHandler) -> URLSessionDataTask {
        let task = session.dataTask(with: request) { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(nil, .requestFailed)
                return
            }
            if httpResponse.statusCode == 200 {
                if let data = data {
                    do {
                        let genericModel = try JSONDecoder().decode(decodingType, from: data)
                        completion(genericModel, nil)
                    } catch let jsonError {
                        print("\nJSON Conversion Error: \(jsonError)\n")
                        completion(nil, .jsonConversionFailure)
                    }
                }
                else {
                    completion(nil, .invalidData)
                }
            }
            else {
                print("HTTP Error: Code \(httpResponse.statusCode)\n")
                completion(nil, .responseUnsuccessful)
            }
        }
        return task
    }
    
    /// Determines if the given string is percent encoded for a url
    ///
    /// - Parameter urlString: The string to validate
    /// - Returns: True if it is percent encoded, false if not
    private func isPercentEncoded(urlString: String) -> Bool {
        return urlString.removingPercentEncoding != urlString
    }
    
    /// Determines if the given string is a valid url string
    ///
    /// - Parameter urlString: The string to validate
    /// - Returns: True if valid, false if not
    private func isValidURLString(urlString: String) -> Bool {
        if isPercentEncoded(urlString: urlString) { return true }
        guard let url = URL(string: urlString) else { return false }
        return UIApplication.shared.canOpenURL(url)
    }
    
    /// Encodes a string using percent encoding and creates a URLRequest from it
    ///
    /// - Parameter urlString: The string to encode
    /// - Returns: A valid URLRequest if successful, nil if optional values fail
    private func encodeToURLRequest(urlString: String) -> URLRequest? {
        guard let encodedString = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return nil }
        guard let encodedURL = URL(string: encodedString) else { return nil }
        return URLRequest(url: encodedURL)
    }
    
    /// Adds the given query parameters to the given URLRequest
    ///
    /// - Parameters:
    ///   - query: The URLRequest to attach parameters to
    ///   - parameters: The [URLQueryItem] parameters to attach to the URLRequest
    /// - Returns: Result<URLRequest, APIError>, .success(URLRequest) if successful, .failure(APIError) if failure occurs
    private func addQueryParameters(to query: URLRequest, parameters: [URLQueryItem]) -> Result<URLRequest, APIError> {
        var newQuery = query
        var queryString = "?"
        guard var str = newQuery.url?.absoluteString else { return Result.failure(.queryParameterAttachmentFailure) }
        for parameter in parameters {
            guard let value = parameter.value else { return Result.failure(.queryParameterAttachmentFailure) }
            queryString += parameter.name + "=" + value + "&"
        }
        queryString.removeLast()
        str.append(queryString)
        if !isValidURLString(urlString: str) {
            guard let encodedRequest = encodeToURLRequest(urlString: str) else { return Result.failure(.queryParameterAttachmentFailure)}
            return Result.success(encodedRequest)
        }
        else { return Result.success(URLRequest(url: URL(string: str)!))}
    }

    /// Attaches an API key to a given URLRequest
    ///
    /// - Parameter request: The request to attach the API key to
    /// - Returns: Result<URLRequest, APIError>, .success(URLRequest) if successful, or .failure(APIError) if a failure occurs
    private func authorizeRequest(from request: URLRequest) -> Result<URLRequest, APIError> {
        if self.apiKey != nil {
            var authorizedRequest = request
            guard let str = authorizedRequest.url?.absoluteString else { return Result.failure(.authorizationAttachmentFailure) }
            if str.contains("?"){
                let components = str.components(separatedBy: "?")
                authorizedRequest = URLRequest(url: URL(string: components[0] + "?access_token=\(self.apiKey!)&" + components[1])!)
                return Result.success(authorizedRequest)
            }
            else {
                let res = addQueryParameters(to: authorizedRequest, parameters: [URLQueryItem(name: "access_token", value: self.apiKey)])
                switch res {
                case .success(let authReqSuccess):
                    return Result.success(authReqSuccess)
                case .failure(let error):
                    return Result.failure(error)
                }
            }
        }
        return Result.failure(.authorizationAttachmentFailure)
    }
    
    /// Replaces the :id parameter in guild queries with the proper guild ID
    ///
    /// - Parameter request: The request to insert the guild ID into
    /// - Returns: A new URLRequest with the :id parameter replaced with the guild ID for this client
    private func insertGuildID(into request: URLRequest) -> Result<URLRequest, APIError> {
        guard var str = request.url?.absoluteString else { return Result.failure(.guildIDAttachmentFailure) }
        if self.guildID != nil { str = str.replacingOccurrences(of: ":id", with: self.guildID!) }
        else { return Result.failure(.guildIDAttachmentFailure) }
        guard let url = URL(string: str) else { return Result.failure(.guildIDAttachmentFailure) }
        return Result.success(URLRequest(url: url))
    }
    
    /// Handles all preprocessing of an outgoing API query, including all authorization and parameter attachments.
    ///
    /// - Parameters:
    ///   - query: The query to prepare
    ///   - needsAuthorization: Whether or not this query needs to be authorized with an API key
    ///   - needsGuildID: Whether or not this query needs to be authorized with a guild ID
    ///   - parameters: Any additional query parameters to add
    /// - Returns: Either a successful result (URLRequest) or a failed result (APIError)
    private func prepareQuery(query: URLRequest, needsAuthorization: Bool, needsGuildID: Bool, parameters: [URLQueryItem]) -> Result<URLRequest, APIError> {
        var editableQuery = query
        var editableParameters = parameters
        if needsAuthorization {
            if self.apiKey != nil { editableParameters.append(URLQueryItem(name: "access_token", value: self.apiKey!)) }
            else { return Result.failure(.authorizationAttachmentFailure) }
        }
        if needsGuildID {
            let guildAuthorizationResult = insertGuildID(into: query)
            switch guildAuthorizationResult {
            case .success(let result):
                editableQuery = result
            case .failure(let error):
                return Result.failure(error)
            }
        }
        editableParameters.append(URLQueryItem(name: "lang", value: self.lang))
        let parameterizedQuery = addQueryParameters(to: editableQuery, parameters: editableParameters)
        switch parameterizedQuery {
        case .success(let result):
            editableQuery = result
        case .failure(let error):
            return Result.failure(error)
        }
        return Result.success(editableQuery)
    }
}
