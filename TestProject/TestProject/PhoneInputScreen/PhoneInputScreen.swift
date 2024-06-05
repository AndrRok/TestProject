//
//  PhoneInputScreen.swift
//  TestProject
//
//  Created by ARMBP on 6/5/24.
//

import SwiftUI

struct PhoneInputScreen: View {//пока функционал реализован не до конца
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 8) {
                Text(Strings.enterPhoneNumber)
                    .font(.head2)
                Text(Strings.wellSendPinToYourNumber)
                    .font(.body2)
            }
            .padding(.bottom, 50)
            HStack{
                HStack {
                    Image(.russianFlag)
                    Text(Strings.plusSevenNumber)
                        .font(.body1)
                        .foregroundStyle(Color.customSecondaryLabel)
                    Spacer()
                }
                .frame(maxWidth: 57)
                .padding(6)
                .background(
                    RoundedRectangle(cornerRadius: 4)
                        .foregroundStyle(Color.customLightGray)
                )
                
                Spacer()
                TextField(Strings.phoneNumberPlaceHolder, text: $phoneNumber)
                    .font(.body1)
                    .padding(6)
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .foregroundStyle(Color.customLightGray)
                    )
                    .frame(maxWidth: .infinity)
                    .keyboardType(.decimalPad)
            }
            
            Spacer()
            
            Button {
                //
            } label: {
                Text(Strings.nextStep)
            }
            .buttonStyle(DefaultButtonStyle())
            .disabled(!(phoneNumber.count == 10))//временно
        }
        .padding(24)
    }
    
    @State private var phoneNumber: String = .init()//временно
}

#Preview {
    PhoneInputScreen()
}