//
//  DashboardView.swift
//  ClearScore
//
//  Created by Tasneem Patel on 2024/03/06.
//

import SwiftUI

struct DashboardView: View {
    
    @StateObject var dashboardViewModel = DashboardViewModel()
    @State private var isPulsating = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Circle()
                    .stroke(Color.gray, style: StrokeStyle(lineWidth: 10))
                    .frame(width: 250, height: 250)

                Circle()
                    .trim(from: 0, to: dashboardViewModel.percentage)
                    .stroke(
                        AngularGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), center: .center),
                        style: StrokeStyle(lineWidth: 10, lineCap: .round)
                    )
                    .frame(width: 250, height: 250)
                    .rotationEffect(Angle(degrees: -90))
                    .animation(.easeInOut(duration: 1.5))
                NavigationLink(destination: DetailView(creditReport: dashboardViewModel.creditReportInfo)) {
                    VStack {
                        Text("Your credit score is")
                            .foregroundColor(.black)
                        Text(String(dashboardViewModel.creditReportInfo.score ?? 0))
                            .font(.largeTitle)
                            .foregroundColor(.yellow)
                        Text("out of " + String(dashboardViewModel.creditReportInfo.maxScoreValue ?? 0))
                            .foregroundColor(.black)
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
