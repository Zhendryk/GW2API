//
//  Result.swift
//  GW2API
//
//  Created by Zhendryk on 7/2/18.
//  Copyright © 2018 Zhendryk. All rights reserved.
//


/// Indicates either successful task completion or a task failure
///
/// - success: Task was successful, returns generic type T
/// - failure: Task failed, returns generic error U
enum Result<T, U> where U: Error {
    case success(T)
    case failure(U)
}
