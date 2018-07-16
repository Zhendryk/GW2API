//
//  APIError.swift
//  GW2API
//
//  Created by Zhendryk on 7/2/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
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
    case guildIDAttachmentFailure
    
    
    /// Detailed description of the failure
    var localizedDescription: String {
        switch self {
        case .requestFailed: return "API request failed"
        case .invalidData: return "Invalid data"
        case .responseUnsuccessful: return "API response unsuccessful"
        case .jsonParsingFailure: return "JSON parsing failure"
        case .jsonConversionFailure: return "JSON conversion failure"
        case .needsAuthorizationError: return "Request needs authorization key and one was either not supplied or is invalid."
        case .authorizationAttachmentFailure: return "Failed to attach authorization key to request, make sure the API key is a valid one."
        case .queryParameterAttachmentFailure: return "Failed to attach one or more query parameters to request, make sure they were properly formatted."
        case .queryEncodingError: return "Failed to properly encode the string for the API query."
        case .guildIDAttachmentFailure: return "Failed to attach the guild ID to a query, check to make sure a guild ID was set and is valid."
        }
    }
}
