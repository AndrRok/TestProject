//
//  ProfileEditingTextfield.swift
//  TestProject
//
//  Created by ARMBP on 7/6/24.
//

import SwiftUI

struct ProfileEditingTextfield: View {
    
    init(text: Binding<String>, placeholder: String) {
        self._text = text
        self.placeholder = placeholder
    }
    
    @Binding var text: String
    private let placeholder: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .padding(.horizontal, 20)
            .frame(height: 36)
            .background(
                RoundedRectangle(cornerRadius: 4)
                    .foregroundStyle(Color.customLightGray)
            )
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
    }
}
