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
                
                Button {
                    showBottomSheet = true
                } label: {
                    Text(Strings.userAgreement)
                        .font(.body1)
                }
                .tint(Color.customLabelPrimary)
                .padding(18)
                
                NavigationLink(destination: PhoneInputScreen()) {
                    Text(Strings.startToHang)
                }
                .buttonStyle(DefaultButtonStyle())
            }
            .padding(24)
            .sheet(isPresented: $showBottomSheet, content: {
                UserAgreementScreen()
            })
            .background(Color.accentColor)
        }
    }
    
    
    @State private var showBottomSheet: Bool = false
    @State private var isLinkActive: Bool = false
    
}

#Preview {
    InitialScreen()
}
