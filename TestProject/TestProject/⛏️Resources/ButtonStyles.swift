//
//  ButtonStyles.swift
//  TestProject
//
//  Created by ARMBP on 6/5/24.
//

import SwiftUI

struct DefaultButtonStyle: ButtonStyle {
    
    init(foregroundColor: Color = Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)),
         backgroundColor: Color = .customPurple
    ) {
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
    }
    
    func makeBody(configuration: Configuration) -> some View {
        let fstColor: Color
        let secColor: Color
        if configuration.isPressed {
            fstColor = backgroundColor == .clear ? .white : backgroundColor
            secColor = foregroundColor
        } else {
            fstColor = foregroundColor
            secColor = backgroundColor
        }
        return GeometryReader { geo in
            configuration
                .label
                .frame(width: geo.size.width, height: 20)
                .foregroundStyle(isEnabled ? fstColor : .white)
                .font(.subHead2)
                .padding(.vertical, 16)
                .background(secColor)
                .cornerRadius(30)
                .contentShape(Rectangle())
                .scaleEffect(configuration.isPressed ? 0.9 : 1)
                .opacity(isEnabled ? 1.0 : 0.5)
        }
        .frame(height: 46)
        .animation(.default, value: configuration.isPressed)
    }
    
    private let foregroundColor: Color
    private let backgroundColor: Color
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.colorScheme) private var colorScheme
}
