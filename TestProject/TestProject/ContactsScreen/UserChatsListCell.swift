//
//  UserChatsListCell.swift
//  TestProject
//
//  Created by ARMBP on 6/7/24.
//

import SwiftUI

struct UserChatsListCell: View {
    
    let userChat: UserChatModel
    
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(userChat.image)
                .resizable()
                .frame(width: 50, height: 50)
                .overlay(alignment: .topTrailing) {
                    Circle()
                        .foregroundStyle(userChat.onlineStatus == .online ? .green : .gray)
                        .background {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.white, lineWidth: 6)
                        }
                        .frame(width: 10, height: 10)
                        .offset(x: 4, y: -4)
                    
                }
                .contentShape(
                    RoundedRectangle(cornerRadius: 16)
                )
                .padding(4)
                .background {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Gradient(colors: [Color.blue.opacity(0.5),
                                                  Color.blue.opacity(0.8)
                                                 ]), lineWidth: 2)
                }
            VStack(alignment: .leading, spacing: 8) {
                Text(userChat.name)
                    .font(.body1)
                    .foregroundStyle(Color.customLabelPrimary)
                Text(userChat.onlineStatus.rawValue)
                    .font(.metaData1)
                    .foregroundStyle(Color.customSecondaryLabel)
                
            }
            Spacer()
        }
        .padding(4)
    }
}

#Preview {
    UserChatsListCell(userChat: UserChatModel(id: 0, image: "russianFlag", name: "Имя", onlineStatus: .online))
}
