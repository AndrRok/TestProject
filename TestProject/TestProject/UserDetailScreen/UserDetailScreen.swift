//
//  UserDetailScreen.swift
//  TestProject
//
//  Created by ARMBP on 6/11/24.
//

import SwiftUI

struct UserDetailScreen: View {
    
    let userModel: UserChatModel
    @Binding var isDetail: Bool
    
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
                    //
                } label: {
                    Image(.pencil)
                        .font(.subHead1)
                        .foregroundStyle(Color.customLabelPrimary)
                }
            }
            Image(.presonDetail)
                .padding(.init(top: 44, leading: .zero, bottom: 22, trailing: .zero))
            Text("Имя")
                .font(.head3)
            Text("+7 999 999-99-99")
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

#Preview {
    UserDetailScreen(userModel: UserChatModel(id: 1, image: "", name: "TestName", onlineStatus: .offline), isDetail: .constant(true))
}
