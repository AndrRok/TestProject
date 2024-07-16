//
//  UserDetailScreen.swift
//  TestProject
//
//  Created by ARMBP on 6/11/24.
//

import SwiftUI

struct UserDetailScreen: View {
    
    init(userModel: UserChatModel, isDetail: Binding<Bool>, isEditing: Binding<Bool>) {
        self.userModel = userModel
        self._isDetail = isDetail
        self._isEditing = isEditing
    }
    
    let userModel: UserChatModel
    @Binding var isDetail: Bool
    @Binding var isEditing: Bool
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    isDetail = false
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
            .padding(.horizontal, 20)
            
            Image(.personDetailBig)
                .padding(.init(top: 44, leading: .zero, bottom: 22, trailing: .zero))
            Text("Имя")
                .font(.head3)
            
            Text("+7 999 999-99-99")//mock
                .font(.subHead3)
                .foregroundStyle(Color.customSecondaryLabel)
                .padding(.bottom, 40)
            
            HStack(spacing: 12){
                Image(.twitter)
                Image(.instagram)
                Image(.linkedIn)
                Image(.facebook)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.customBackground)
    }
    
    @Environment(\.dismiss) private var dismiss
}
