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
            Section(header: Text("Credit Score")) {
                Text("Score: \(creditReport.score ?? 0)")
                Text("Max Score: \(creditReport.maxScoreValue ?? 0)")
                Text("Min Score: \(creditReport.minScoreValue ?? 0)")
            }

            Section(header: Text("Credit Details")) {
                Text("Client Reference:\n \(creditReport.clientRef ?? "")")
                Text("Status: \(creditReport.status ?? "")")
                Text("Changed Score: \(creditReport.changedScore ?? 0)")
                Text("Percentage Credit used: \(creditReport.percentageCreditUsed ?? 0)")
            }
        }
        .navigationTitle("Credit Report")
    }
}

#Preview {
    DetailView(creditReport: CreditReportInfo())
}
