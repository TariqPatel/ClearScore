//
//  DashboardView.swift
//  ClearScore
//
//  Created by Tasneem Patel on 2024/03/06.
//

import SwiftUI

struct DashboardView: View {
    
    @StateObject var dashboardViewModel = DashboardViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Circle()
                    .stroke(Color.black, lineWidth: 4)
                    .frame(width: 300, height: 300)
                NavigationLink(destination: DetailView(creditReport: dashboardViewModel.creditReportInfo)) {
                    VStack {
                        Text("Your credit score is")
                        Text(String(dashboardViewModel.creditReportInfo.score ?? 0))
                            .font(.largeTitle)
                            .foregroundColor(.yellow)
                        Text("out of " + String(dashboardViewModel.creditReportInfo.maxScoreValue ?? 0))
                    }
                }
            }
            .navigationBarTitle("Dashboard", displayMode: .inline)
        }.onAppear {
            dashboardViewModel.fetchCreditReportInfo()
        }
    }
}

#Preview {
    DashboardView()
}
