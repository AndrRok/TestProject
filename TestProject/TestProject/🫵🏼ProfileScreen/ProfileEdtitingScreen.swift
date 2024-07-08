//
//  ProfileEdtitingScreen.swift
//  TestProject
//
//  Created by ARMBP on 7/6/24.
//

import SwiftUI

struct ProfileEdtitingScreen: View {
    
    @State private var name: String = .init()
    @State private var secondName: String = .init()
    @State private var twitter: String = .init()
    @State private var instagram: String = .init()
    @State private var linkedIn: String = .init()
    @State private var facebook: String = .init()
    
    @Binding var isEditing: Bool
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                HStack {
                    Button {
                        isEditing = false
                    } label: {
                        HStack {
                            Image(systemName: "chevron.left")
                            Text("Профиль")
                                .font(.subHead1)
                        }
                        .foregroundStyle(Color.customLabelPrimary)
                    }
                    Spacer()
                    Button {
                        isEditing.toggle()
                    } label: {
                        Image(.pencil)
                            .font(.subHead1)
                            .foregroundStyle(Color.customLabelPrimary)
                    }
                }
                
                Spacer()
                
                Image(.presonDetailSmall)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .foregroundStyle(Color.customLightGray)
                    .overlay(alignment: .bottomTrailing) {
                        Image(systemName: "plus.circle.fill")
                            .offset(x: -16)
                            .foregroundStyle(Color.customLightGrayReversed)
                    }
                    .padding(EdgeInsets(top: 44, leading: .zero, bottom: 22, trailing: .zero))
                
                
                ProfileEditingTextfield(text: $name, placeholder: "Имя")
                    .textInputAutocapitalization(.words)
                
                ProfileEditingTextfield(text: $secondName, placeholder: "Фамилия")
                    .textInputAutocapitalization(.words)
                
                Divider()
                    .padding(.vertical, 10)
                
                ProfileEditingTextfield(text: $twitter, placeholder: "Twitter")
                ProfileEditingTextfield(text: $instagram, placeholder: "Instagram")
                ProfileEditingTextfield(text: $linkedIn, placeholder: "LinkedIn")
                ProfileEditingTextfield(text: $facebook, placeholder: "Facebook")
               
            }
            .padding(.horizontal, 20)
           
        }
        .scrollIndicators(.hidden)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.customBackground)
        .safeAreaInset(edge: .bottom) {
            Button {
                //save
            } label: {
                Text("Сохранить")
            }
            .buttonStyle(WBButtonStyle())
            .disabled(disableSaveButton)
        }
    }
    
    private var disableSaveButton: Bool {
        name.isEmpty
        || secondName.isEmpty
        || twitter.isEmpty
        || instagram.isEmpty
        || linkedIn.isEmpty
        || facebook.isEmpty
    }
}
