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
        Text(dashboardViewModel.name)
    }
}

#Preview {
    DashboardView()
}
