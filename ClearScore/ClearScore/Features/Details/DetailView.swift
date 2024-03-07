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
                Text("Score Band: \(creditReport.scoreBand ?? 0)")
            }

            Section(header: Text("Credit Details")) {
                Text("Client Reference: \(creditReport.clientRef ?? "")")
                Text("Status: \(creditReport.status ?? "")")
                Text("Max Score: \(creditReport.maxScoreValue ?? 0)")
                // Add more Text views for other details
            }
        }
        .navigationTitle("Credit Report")
    }
}

#Preview {
    DetailView(creditReport: CreditReportInfo())
}
