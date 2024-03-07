//
//  Localizable.swift
//  ClearScore
//
//  Created by Tasneem Patel on 2024/03/07.
//

import Foundation

enum LocalizedStrings {
    static let creditScoreIs = localized("Your credit score is")
    static let outOf = localized("out of ")
    static let dashboard = localized("Dashboard")
    
    static let creditScore = localized("Credit Score")
    static let score = localized("Score:")
    static let maxScore = localized("Max Score:")
    static let minScore = localized("Min Score:")
    static let creditDetails = localized("Credit Details")
    static let clientReference = localized("Client Reference:")
    
    static let status = localized("Status:")
    static let changedScore = localized("Changed Score:")
    static let percentageCreditUsed = localized("Percentage Credit used:")
    static let creditReport = localized("Credit Report")
    

    private static func localized(_ key: String) -> String {
        NSLocalizedString(key, comment: "")
    }
}
