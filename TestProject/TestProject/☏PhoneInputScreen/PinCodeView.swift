//
//  PinCodeView.swift
//  TestProject
//
//  Created by ARMBP on 7/8/24.
//

import SwiftUI

struct PinCodeView: View {
    
    init(phone: String) {
        self.phone = phone
    }
    
    private let phone: String
    @State private var rotationAngle: Angle = .zero
    @State private var pinCode: String = .init()
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Введите код")
                .font(.system(size: 24, weight: .bold))
                .rotationEffect(rotationAngle)
                .onAppear {
                    withAnimation(.smooth) {
                        rotationAngle = .degrees(360)
                    }
                }
            
            Group {
                Text("Отправили код на номер")
                Text(phone)
            }
            .font(.system(size: 14))
            
            PinCodeTextfield(pinCode: $pinCode)
            
            Button {
                
            } label: {
                Text("Запросить код повторно")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(Color.customTitleReversed)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.customBackground)
        .onTapGesture {
            hideKeyboard()
        }
    }
}

#Preview {
    PinCodeView(phone: "+7 999 999-99-99")
}
