//
//  DashboardViewModel.swift
//  ClearScore
//
//  Created by Tasneem Patel on 2024/03/06.
//

import Foundation

final class DashboardViewModel: ObservableObject {
    @Published var creditReportInfo = CreditReportInfo()
    @Published var percentage: CGFloat = 0.0
    
    func fetchCreditReportInfo() {
        guard let url = URL(string: Constants.Strings.creditReportURL) else {return}
        NetworkService<CreditReportResponseModel>.fetchData(for: url) { (result) in
            switch result {
                case .success(let response):
                    DispatchQueue.main.async {
                        self.creditReportInfo = response.creditReportInfo
                        var score = CGFloat(response.creditReportInfo.score ?? 1)
                        var maxScore = CGFloat(response.creditReportInfo.maxScoreValue ?? 1)
                        self.percentage = score / maxScore
                        print(self.percentage)
                    }
                case .failure(let error):
                    print(error)
            }
        }
    }
}
