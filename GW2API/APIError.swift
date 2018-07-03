//
//  APIError.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/2/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// @enum APIError: Enumeration of Swift's Error class, defining the types of failures that can occur while accessing GW2API.  //
// @var localizedDescription: Provides a description for each individual APIError for debugging purposes.                     //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
enum APIError: Error {
    case requestFailed
    case jsonConversionFailure
    case invalidData
    case responseUnsuccessful
    case jsonParsingFailure
    case needsAuthorizationError
    case authorizationAttachmentFailure
    
    var localizedDescription: String {
        switch self {
        case .requestFailed: return "API request failed"
        case .invalidData: return "Invalid data"
        case .responseUnsuccessful: return "API response unsuccessful"
        case .jsonParsingFailure: return "JSON parsing failure"
        case .jsonConversionFailure: return "JSON conversion failure"
        case .needsAuthorizationError: return "Request needs authorization key"
        case .authorizationAttachmentFailure: return "Failed to attach authorization key to request"
        }
    }
}
