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
    func fetchAsync<T: Decodable>(with request: URLRequest, needsAuthorization: Bool, needsGuildID: Bool, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)
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
    
    /// Fetches JSON data for any given endpoint from the GuildWars 2 API
    ///
    /// - Parameters:
    ///   - request: URLRequest for the API endpoint
    ///   - needsAuthorization: If the endpoint requires an API key to be accessed
    ///   - needsGuildID: If the endpoint requires a guild ID to be accessed
    ///   - decode: Callback function to parse the JSON into a generic decodable object
    ///   - completion: Callback function to handle the JSON data in the form of Result<T, APIError>
    func fetchAsync<T: Decodable>(with request: URLRequest, needsAuthorization: Bool = false, needsGuildID: Bool = false, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void) {
        var query = request
        if needsGuildID {
            let gIDreq = insertGuildID(into: request)
            switch gIDreq {
            case .success(let result):
                query = result
            case .failure(let error):
                print(error.localizedDescription)
                return
            }
        }
        if needsAuthorization {
            let areq = getAuthorizedRequest(from: request)
            switch areq {
            case .success(let result):
                query = result
            case .failure(let error):
                print(error.localizedDescription)
                return
            }
        }
        guard let encodedQuery = ensureQueryEncoding(originalQuery: query) else { return }
        let task = decodingTask(with: encodedQuery, decodingType: T.self) { (json, error) in
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
    
    /// Adds the given query parameters to the given URLRequest
    ///
    /// - Parameters:
    ///   - query: The URLRequest to attach parameters to
    ///   - parameters: The [URLQueryItem] parameters to attach to the URLRequest
    /// - Returns: Result<URLRequest, APIError>, .success(URLRequest) if successful, .failure(APIError) if failure occurs
    func addQueryParameters(to query: URLRequest, parameters: [URLQueryItem]) -> Result<URLRequest, APIError> {
        var newQuery = query
        var queryString = "?"
        guard var str = newQuery.url?.absoluteString else { return Result.failure(.queryParameterAttachmentFailure) }
        for parameter in parameters {
            guard let value = parameter.value else { return Result.failure(.queryParameterAttachmentFailure) }
            queryString += parameter.name + "=" + value + "&"
        }
        queryString.removeLast()
        str.append(queryString)
        guard let encodedRequest = ensureStringEncoding(originalString: str) else { return Result.failure(.queryParameterAttachmentFailure) }
        return Result.success(encodedRequest)
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
    
    /// Given a string URL, ensures it is properly encoded for a http query
    ///
    /// - Parameter originalString: The original string URL to be checked
    /// - Returns: Properly encoded URLRequest, or nil if failure occurs
    private func ensureStringEncoding(originalString: String) -> URLRequest? {
        if originalString.contains(" ") {
            guard let encodedStr = originalString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return nil }
            guard let newlyEncodedQuery = URL(string: encodedStr) else { return nil }
            return URLRequest(url: newlyEncodedQuery)
        }
        else {
            guard let originalURL = URL(string: originalString) else { return nil }
            return URLRequest(url: originalURL)
        }
    }
    
    /// Given a URLRequest, ensures the string is properly encoded for a http query
    ///
    /// - Parameter originalQuery: The original URLRequest to be checked
    /// - Returns: Properly encoded URLRequest, or nil if failure occurs
    private func ensureQueryEncoding(originalQuery: URLRequest) -> URLRequest? {
        guard let qString = originalQuery.url?.absoluteString else { return nil }
        if qString.contains(" ") {
            guard let encodedStr = qString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return nil }
            guard let newlyEncodedQuery = URL(string: encodedStr) else { return nil }
            return URLRequest(url: newlyEncodedQuery)
        }
        else {
            return originalQuery
        }
    }

    /// Attaches an API key to a given URLRequest
    ///
    /// - Parameter request: The request to attach the API key to
    /// - Returns: Result<URLRequest, APIError>, .success(URLRequest) if successful, or .failure(APIError) if a failure occurs
    private func getAuthorizedRequest(from request: URLRequest) -> Result<URLRequest, APIError> {
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
}
