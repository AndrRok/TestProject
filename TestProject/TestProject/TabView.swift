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
