//
//  TabView.swift
//  TestProject
//
//  Created by ARMBP on 6/8/24.
//

import SwiftUI

struct MainView: View {
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        CustomTabBarView(selection: $selection){
            TabView(selection: $selection) {
                ContactsScreen()
                    .tag(0)
                
                Text("Чаты")
                    .tag(1)
                
                Text("Еще")
                    .tag(2)
                
            }
        }
        .navigationBarBackButtonHidden()
    }
    
    @State private var selection: Int = 0
}

#Preview {
    MainView()
}
