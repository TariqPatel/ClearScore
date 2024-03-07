//
//  DetailView.swift
//  ClearScore
//
//  Created by Tasneem Patel on 2024/03/07.
//

import SwiftUI

struct DetailView: View {
    let creditReport: CreditReportInfo

    var body: some View {
        List {
            Section(header: Text(LocalizedStrings.creditScore)) {
                Text("\(LocalizedStrings.score) \(creditReport.score ?? 0)")
                Text("\(LocalizedStrings.maxScore) \(creditReport.maxScoreValue ?? 0)")
                Text("\(LocalizedStrings.minScore) \(creditReport.minScoreValue ?? 0)")
            }

            Section(header: Text(LocalizedStrings.creditDetails)) {
                Text("\(LocalizedStrings.clientReference)\n \(creditReport.clientRef ?? "")")
                Text("\(LocalizedStrings.status) \(creditReport.status ?? "")")
                Text("\(LocalizedStrings.changedScore) \(creditReport.changedScore ?? 0)")
                Text("\(LocalizedStrings.percentageCreditUsed) \(creditReport.percentageCreditUsed ?? 0)")
            }
        }
        .navigationTitle(LocalizedStrings.creditReport)
    }
}

#Preview {
    DetailView(creditReport: CreditReportInfo())
}
