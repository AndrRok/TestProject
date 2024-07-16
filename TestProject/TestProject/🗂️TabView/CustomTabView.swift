//
//  CustomTabView.swift
//  TestProject
//
//  Created by ARMBP on 6/8/24.
//

import SwiftUI

struct CustomTabBarView<Content: View>: View {
    @Binding var selection: Int
    var content: () -> Content
    
    var body: some View {
        VStack(spacing: 0) {
            content()
            
            HStack(alignment: .center) {
                VStack(spacing: 8) {
                    Image(.twoPersons)
                        .foregroundStyle(selection == 0 ? Color.customPurple : Color.unselectedTab)
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 22)
                .onTapGesture {
                    selection = 0
                }
                
                VStack(spacing: 8) {
                    Image(.message)
                        .foregroundStyle(selection == 1 ? Color.customPurple : Color.unselectedTab)
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 22)
                .onTapGesture {
                    selection = 1
                }
                
                VStack(spacing: 8) {
                    Image(.threeDots)
                        .foregroundStyle(selection == 2 ? Color.customPurple : Color.unselectedTab)
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 22)
                .onTapGesture {
                    selection = 2
                }
            }
            .background {
                Rectangle()
                    .fill(Color.customBackground)
                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                    .ignoresSafeArea()
            }
        }
        .ignoresSafeArea(.keyboard)
    }
}
