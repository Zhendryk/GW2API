//
//  APIClient.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/2/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// @protocol APIClient: Protocol for all endpoint client classes.                                                                 //
// @var session: URLSession to make http requests to api endpoints.                                                               //
// @func fetchAsync<T: Decodable>: Asynchronous fetch to api endpoint, returns json data upon success and APIError upon failure.  //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
protocol APIClient {
    var session: URLSession { get }
    func fetchAsync<T: Decodable>(with request: URLRequest, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// @extension to APIClient:                                                                                                                                                    //
// @typealias JSONTaskCompletionHandler: Alias for completion handler that returns a generic Decodable structure and APIError (Decodable?, APIError?).                         //
// @func decodingTask<T: Decodable>: Creates asynchronous dataTask, checks for errors and upon recieving HTTP 200 OK, decodes the json data into an object.                    //
// @func fetchAsync<T: Decodable>: Creates asynchronous decodingTask (above), fetches decoded json, completionHandler completes with either Result.success or Result.failure.  //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
extension APIClient {
    
    typealias JSONTaskCompletionHandler = (Decodable?, APIError?) -> Void
    
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
                    } catch {
                        completion(nil, .jsonConversionFailure)
                    }
                }
                else {
                    completion(nil, .invalidData)
                }
            }
            else {
                completion(nil, .responseUnsuccessful)
            }
        }
        return task
    }

    func fetchAsync<T: Decodable>(with request: URLRequest, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void) {
        let task = decodingTask(with: request, decodingType: T.self) { (json, error) in
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
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// @Class Client, conforms to APIClient protocol, base object for all endpoint client classes.                                                                            //
// @var session: URLSession conformed from APIClient protocol, see above.                                                                                                 //
// @var apiKey: String, default nil, contains the user's authentication key for the API.                                                                                  //
// @init(configuration: URLSessionConfiguration): Initializes the client with the provided URLSessionConfiguration.                                                       //
// @init(): Convenience init method that initializes the client with the default URLSessionConfiguration.                                                                 //
// @func setAPIKey(_ key: String): Sets this client's API key to the given key.                                                                                           //
// @func getAuthorizedRequest(from request: URLRequest): Takes the provided request, attaches the client's API key if available, and returns a new authorized request.    //
// @func addQueryParameters(to query: URLRequest, parameters: [URLQueryItem]): Takes the query, attaches all of the given query parameters and returns a new URLRequest.  //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class Client : APIClient {
    var session: URLSession
    var apiKey: String? = nil
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    func setAPIKey(_ key: String) {
        self.apiKey = key
    }
    
    func getAuthorizedRequest(from request: URLRequest) -> (URLRequest?, APIError?) {
        if self.apiKey != nil {
            var authorizedRequest = request
            guard let str = authorizedRequest.url?.absoluteString else { return (nil, .authorizationAttachmentFailure) }
            if str.contains("?"){
                let components = str.components(separatedBy: "?")
                authorizedRequest = URLRequest(url: URL(string: components[0] + "?access_token=\(self.apiKey!)&" + components[1])!)
                return (authorizedRequest, nil)
            }
            else {
                guard let authorizedRequest = addQueryParameters(to: authorizedRequest, parameters: [URLQueryItem(name: "access_token", value: self.apiKey)]) else { return (nil, .authorizationAttachmentFailure) }
                return (authorizedRequest, nil)
            }
            //authorizedRequest.addValue(self.apiKey!, forHTTPHeaderField: "Authorization")
            //authorizedRequest.httpMethod = "GET"
            //return (authorizedRequest, nil)
        }
        return (nil, .authorizationAttachmentFailure)
    }
    
    func addQueryParameters(to query: URLRequest, parameters: [URLQueryItem]) -> URLRequest? {
        var newQuery = query
        var queryString = "?"
        guard let str = newQuery.url?.absoluteString else { return nil }
        for parameter in parameters {
            queryString += parameter.name + "=" + parameter.value! + "&" //Check this for nil
        }
        queryString.removeLast()
        let formattedRequest = URL(string: str + queryString)!
        return URLRequest(url: formattedRequest)
    }
}
