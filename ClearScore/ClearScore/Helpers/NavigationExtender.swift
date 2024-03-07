//
//  NavigationExtender.swift
//  ClearScore
//
//  Created by Tasneem Patel on 2024/03/07.
//

import SwiftUI

extension View {
    func navigationBarColor(backgroundColor: Color, titleColor: Color) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor, titleColor: titleColor))
    }
}

struct NavigationBarModifier: ViewModifier {
    var backgroundColor: Color
    var titleColor: Color

    init(backgroundColor: Color, titleColor: Color) {
        self.backgroundColor = backgroundColor
        self.titleColor = titleColor

        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = UIColor(backgroundColor)

        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor(titleColor)]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(titleColor)]

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }

    func body(content: Content) -> some View {
        content
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
