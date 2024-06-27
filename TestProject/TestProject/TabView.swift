//
//  TabView.swift
//  TestProject
//
//  Created by ARMBP on 6/8/24.
//

import SwiftUI

struct MainView: View {
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color.customLabelPrimary)
        
        let image = UIImage.gradientImageWithBounds(
            bounds: CGRect( x: 0, y: 0, width: UIScreen.main.scale, height: 8),
            colors: [
                UIColor.clear.cgColor,
                UIColor.black.withAlphaComponent(0.1).cgColor
            ]
        )
        
        let appearance = UITabBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = UIColor.white
        
        appearance.backgroundImage = UIImage()
        appearance.shadowImage = image
        
        UITabBar.appearance().standardAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $selection) {
            ContactsScreen()
                .tag(0)
                .tabItem {
                    Image(.twoPersons)
                }
            Text("Чаты")
                .tag(1)
                .tabItem {
                    Image(.message)
                    
                }
            Text("Еще")
                .tag(2)
                .tabItem {
                    Image(.threeDots)
                    
                }
        }
        .navigationBarBackButtonHidden()
    }
    
    @State private var selection: Int = 0
}

#Preview {
    MainView()
}
