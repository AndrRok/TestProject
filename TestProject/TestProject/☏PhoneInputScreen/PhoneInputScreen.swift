//
//  PhoneInputScreen.swift
//  TestProject
//
//  Created by ARMBP on 6/5/24.
//

import SwiftUI

struct PhoneInputScreen: View {//пока функционал реализован не до конца
    
    @State private var phoneNumber: String = .init()//временно
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                VStack(spacing: 8) {
                    Text("Введите номер телефона")
                        .font(.head2)
                        .foregroundStyle(Color.customLabelPrimary)
                    
                    Text("Мы вышлем код подтверждения на указаный номер")
                        .font(.body2)
                        .foregroundStyle(Color.customLabelPrimary)
                }
                .padding(.bottom, 50)
                
                HStack{
                    HStack {
                        Image(.russianFlag)
                        Text("+7")
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
                    TextField("000 000-00-00", text: $phoneNumber)
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
                
                Spacer()
                
                NavigationLink(destination: MainView()) {
                    Text("Продолжить")
                }
                .buttonStyle(WBButtonStyle())
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
}

#Preview {
    PhoneInputScreen()
}
