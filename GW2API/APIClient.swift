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
    func fetchAsync<T: Decodable>(with request: URLRequest, needsAuthorization: Bool, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// @extension to APIClient:                                                                                                                                                    //
// @typealias JSONTaskCompletionHandler: Alias for completion handler that returns a generic Decodable structure and APIError (Decodable?, APIError?).                         //
//   //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
extension APIClient {
    typealias JSONTaskCompletionHandler = (Decodable?, APIError?) -> Void
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// @Class Client, conforms to APIClient protocol, base object for all endpoint client classes.                                                                                 //
// @var session: URLSession conformed from APIClient protocol, see above.                                                                                                      //
// @var apiKey: String, default nil, contains the user's authentication key for the API.                                                                                       //
// @init(configuration: URLSessionConfiguration): Initializes the client with the provided URLSessionConfiguration.                                                            //
// @init(): Convenience init method that initializes the client with the default URLSessionConfiguration.                                                                      //
// @func setAPIKey(_ key: String): Sets this client's API key to the given key.                                                                                                //
// @func fetchAsync<T: Decodable>: Creates asynchronous decodingTask (above), fetches decoded json, completionHandler completes with either Result.success or Result.failure.  //
// @func getAuthorizedRequest(from request: URLRequest): Takes the provided request, attaches the client's API key if available, and returns a new authorized request.         //
// @func addQueryParameters(to query: URLRequest, parameters: [URLQueryItem]): Takes the query, attaches all of the given query parameters and returns a new URLRequest.       //
// @func decodingTask<T: Decodable>: Creates asynchronous dataTask, checks for errors and upon recieving HTTP 200 OK, decodes the json data into an object.                    //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
    
    func fetchAsync<T: Decodable>(with request: URLRequest, needsAuthorization: Bool = false, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void) {
        var query = request
        if needsAuthorization {
            let areq = getAuthorizedRequest(from: request)
            switch areq {
            case .success(let result):
                query = result
            case .failure(let error):
                print(error)
                return
            }
        }
        let task = decodingTask(with: query, decodingType: T.self) { (json, error) in
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
    
    func getAuthorizedRequest(from request: URLRequest) -> Result<URLRequest, APIError> {
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
        guard let formattedRequest = URL(string: str) else { return Result.failure(.queryParameterAttachmentFailure) }
        return Result.success(URLRequest(url: formattedRequest))
    }
    
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
}
