//
//  PhoneInputScreen.swift
//  TestProject
//
//  Created by ARMBP on 6/5/24.
//

import SwiftUI

struct PhoneInputScreen: View {//пока функционал реализован не до конца
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                VStack(spacing: 8) {
                    Text(Strings.enterPhoneNumber)
                        .font(.head2)
                        .foregroundStyle(Color.customLabelPrimary)
                    
                    Text(Strings.wellSendPinToYourNumber)
                        .font(.body2)
                        .foregroundStyle(Color.customLabelPrimary)
                }
                .padding(.bottom, 50)
                
                HStack(){
                    HStack {
                        Image(.russianFlag)
                        Text(Strings.plusSevenNumber)
                            .font(.body1)
                            .foregroundStyle(Color.customSecondaryLabel)
                            .lineLimit(1)
                    }
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .foregroundStyle(Color.customLightGray)
                    )
                    
                    Spacer()
                    TextField(Strings.phoneNumberPlaceHolder, text: $phoneNumber)
                        .font(.body1)
                        .foregroundStyle(Color.customLabelPrimary)
                        .padding(8)
                        .background(
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundStyle(Color.customLightGray)
                        )
                        .frame(maxWidth: .infinity)
                        .keyboardType(.decimalPad)
                }
                //.background(Color.customLightGray)
                
                Spacer()
                
                NavigationLink(destination: MainView()) {
                    Text(Strings.nextStep)
                }
                .buttonStyle(DefaultButtonStyle())
                .padding(.bottom, 20)
                //.disabled(!(phoneNumber.count == 10))//временно, потом заменю на верификацию номера
            }
            .padding([.top, .horizontal], 24)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(.backButton)
                    }
                }
            }
            .background(Color.customBackground)
        }
    }
    @Environment(\.dismiss) private var dismiss
    @State private var phoneNumber: String = .init()//временно
}

#Preview {
    PhoneInputScreen()
}
