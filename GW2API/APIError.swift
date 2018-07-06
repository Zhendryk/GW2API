//
//  APIError.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/2/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//


/// All possible failures that can occur during API querying
enum APIError: Error {
    case requestFailed
    case jsonConversionFailure
    case invalidData
    case responseUnsuccessful
    case jsonParsingFailure
    case needsAuthorizationError
    case authorizationAttachmentFailure
    case queryParameterAttachmentFailure
    case queryEncodingError
    
    
    /// Detailed description of the failure
    var localizedDescription: String {
        switch self {
        case .requestFailed: return "API request failed"
        case .invalidData: return "Invalid data"
        case .responseUnsuccessful: return "API response unsuccessful"
        case .jsonParsingFailure: return "JSON parsing failure"
        case .jsonConversionFailure: return "JSON conversion failure"
        case .needsAuthorizationError: return "Request needs authorization key"
        case .authorizationAttachmentFailure: return "Failed to attach authorization key to request"
        case .queryParameterAttachmentFailure: return "Failed to attach one or more query parameters to request"
        case .queryEncodingError: return "Failed to properly encode the API query"
        }
    }
}
