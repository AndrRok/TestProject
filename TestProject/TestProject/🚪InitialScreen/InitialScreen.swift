//
//  ContentView.swift
//  TestProject
//
//  Created by ARMBP on 6/5/24.
//

import SwiftUI

struct InitialScreen: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                Image(.initialScreen)
                    .imageScale(.large)
                    .padding(.vertical, 42)
                
                Text(Strings.initialLogo)
                    .font(.head2)
                
                Spacer()
                
                Text(.init(Strings.initialAcception()))
                    .font(.agreementFont)
                    .tint(Color.customPurple)
                    .foregroundStyle(Color.customLightGray2)
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: PhoneInputScreen()) {
                    Text(Strings.startToHang)
                }
                .buttonStyle(DefaultButtonStyle())
                .padding(.bottom, 20)
            }
            .padding([.top, .horizontal], 24)
            .sheet(isPresented: $showBottomSheet, content: {
                UserAgreementScreen()
            })
            .background(Color.customBackground)
        }
    }
    
    @State private var showBottomSheet: Bool = false
    @State private var isLinkActive: Bool = false
    
}

#Preview {
    InitialScreen()
}
