//
//  ContentView.swift
//  TestProject
//
//  Created by ARMBP on 6/5/24.
//

import SwiftUI

struct InitialScreen: View {
    
    @State private var showBottomSheet: Bool = false
    @State private var isLinkActive: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                Image(.initialScreen)
                    .imageScale(.large)
                    .padding(.vertical, 42)
                
                Text("Общайтесь с друзьями\nи близкими легко")
                    .font(.head2)
                
                Spacer()
                
                Text(.init("agreementLinks"))
                    .font(.agreementFont)
                    .tint(Color.customPurple)
                    .foregroundStyle(Color.customLightGray2)
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: PhoneInputScreen()) {
                    Text("Начать общаться")
                }
                .buttonStyle(WBButtonStyle())
                .padding(.bottom, 20)
            }
            .padding([.top, .horizontal], 24)
            .sheet(isPresented: $showBottomSheet, content: {
                UserAgreementScreen()
            })
            .background(Color.customBackground)
        }
    }
}

#Preview {
    InitialScreen()
}
