//
//  SearchBar.swift
//  TestProject
//
//  Created by ARMBP on 6/7/24.
//

import SwiftUI
import Foundation

typealias VoidClosure = () -> Void
typealias BoolClosure = (Bool) -> Void

struct SearchBar: View {
    let prompt: String
    var text: Binding<String>
    let backgroundColor: Color?
    let cornerRadius: CGFloat?
    let height: CGFloat?
    let horizontalPadding: CGFloat?
    let keyboardType: UIKeyboardType
    var onEditingChanged: BoolClosure?
    var onXmarkClicked: VoidClosure?
    
    @FocusState private var isFocused: Bool
    
    init(prompt: String = "Search",
         text: Binding<String>,
         backgroundColor: Color? = Color(.secondarySystemGroupedBackground),
         cornerRadius: CGFloat? = CGFloat(8),
         keyboardType: UIKeyboardType = .namePhonePad,
         height: CGFloat? = nil,
         horizontalPadding: CGFloat? = nil,
         onEditingChanged: BoolClosure? = nil,
         onXmarkClicked: VoidClosure? = nil
    ) {
        self.prompt = prompt
        self.text = text
        self.backgroundColor = backgroundColor
        self.cornerRadius  = cornerRadius
        self.height = height
        self.horizontalPadding = horizontalPadding
        self.keyboardType = keyboardType
        self.onEditingChanged = onEditingChanged
    }
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(Color(.systemGray))
            
            TextField("",
                      text: text, prompt: Text(prompt).foregroundColor(Color.customSecondaryLabel))
            .foregroundStyle(Color.customLabelPrimary)
            .disableAutocorrection(true)
            .keyboardType(keyboardType)
            .focused($isFocused)
            if !text.wrappedValue.isEmpty {
                Image(systemName: "xmark.circle.fill")
                    .foregroundStyle(Color(.systemGray))
                    .onTapGesture {
                        self.text.wrappedValue = ""
                        onXmarkClicked?()
                    }
            }
        }
        .padding(7)
        .background(backgroundColor)
        .cornerRadius(cornerRadius ?? 8)
        .padding(.horizontal, horizontalPadding ?? 10)
        .onChange(of: isFocused) { isFocused in
            onEditingChanged?(isFocused)
        }
    }
}


