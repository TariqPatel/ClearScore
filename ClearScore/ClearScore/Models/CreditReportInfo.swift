//
//  CreditReportInfo.swift
//  ClearScore
//
//  Created by Tasneem Patel on 2024/03/06.
//

import Foundation

struct CreditReportResponseModel: Codable {
    let accountIDVStatus: String
    let creditReportInfo: CreditReportInfo
    let dashboardStatus: String
    let personaType: String
    let coachingSummary: CoachingSummary
    let augmentedCreditScore: String?
}

struct CreditReportInfo: Codable {
    let score: Int?
    let scoreBand: Int?
    let clientRef: String?
    let status: String?
    let maxScoreValue: Int?
    let minScoreValue: Int?
    let monthsSinceLastDefaulted: Int?
    let hasEverDefaulted: Bool?
    let monthsSinceLastDelinquent: Int?
    let hasEverBeenDelinquent: Bool?
    let percentageCreditUsed: Int?
    let percentageCreditUsedDirectionFlag: Int?
    let changedScore: Int?
    let currentShortTermDebt: Int?
    let currentShortTermNonPromotionalDebt: Int?
    let currentShortTermCreditLimit: Int?
    let currentShortTermCreditUtilisation: Int?
    let changeInShortTermDebt: Int?
    let currentLongTermDebt: Int?
    let currentLongTermNonPromotionalDebt: Int?
    let currentLongTermCreditLimit: Int?
    let currentLongTermCreditUtilisation: Int?
    let changeInLongTermDebt: Int?
    let numPositiveScoreFactors: Int?
    let numNegativeScoreFactors: Int?
    let equifaxScoreBand: Int?
    let equifaxScoreBandDescription: String?
    let daysUntilNextReport: Int?

    init() {
        self.score = 0
        self.scoreBand = 0
        self.clientRef = ""
        self.status = ""
        self.maxScoreValue = 0
        self.minScoreValue = 0
        self.monthsSinceLastDefaulted = 0
        self.hasEverDefaulted = false
        self.monthsSinceLastDelinquent = 0
        self.hasEverBeenDelinquent = false
        self.percentageCreditUsed = 0
        self.percentageCreditUsedDirectionFlag = 0
        self.changedScore = 0
        self.currentShortTermDebt = 0
        self.currentShortTermNonPromotionalDebt = 0
        self.currentShortTermCreditLimit = 0
        self.currentShortTermCreditUtilisation = 0
        self.changeInShortTermDebt = 0
        self.currentLongTermDebt = 0
        self.currentLongTermNonPromotionalDebt = 0
        self.currentLongTermCreditLimit = nil
        self.currentLongTermCreditUtilisation = nil
        self.changeInLongTermDebt = 0
        self.numPositiveScoreFactors = 0
        self.numNegativeScoreFactors = 0
        self.equifaxScoreBand = 0
        self.equifaxScoreBandDescription = ""
        self.daysUntilNextReport = 0
    }
}

struct CoachingSummary: Codable {
    let activeTodo: Bool?
    let activeChat: Bool?
    let numberOfTodoItems: Int?
    let numberOfCompletedTodoItems: Int?
    let selected: Bool?
}
