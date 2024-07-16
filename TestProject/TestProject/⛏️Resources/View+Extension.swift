//
//  View+Extension.swift
//  TestProject
//
//  Created by ARMBP on 6/16/24.
//

import SwiftUI

typealias VoidClosure = () -> Void
typealias BoolClosure = (Bool) -> Void

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
    
    func hide(_ isHide: Bool) -> some View {
        self
            .opacity(isHide ? 0 : 1)
    }
}

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(
            active: CornerRotateModifier(amount: -90, anchor: .topLeading),
            identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
        )
    }
}
