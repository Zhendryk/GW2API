//
//  String+regex.swift
//  GW2API
//
//  Created by Jonathan Bailey on 6/20/20.
//  Copyright © 2020 Jonathan Bailey. All rights reserved.
//

internal extension String {

    /// Returns whether or not this string fully matches the given regular expression.
    /// - Parameter regexp: The regular expression to test this String against. Must be passed in as: #"<regexp_here>"#
    func fullyMatches(regexp r: String) -> Bool {
        guard let range = self.range(of: r, options: .regularExpression) else { return false }
        return (range.lowerBound == self.startIndex && range.upperBound == self.endIndex)
    }
}
