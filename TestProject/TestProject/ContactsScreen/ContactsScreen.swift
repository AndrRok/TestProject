//
//  ContactsScreen.swift
//  TestProject
//
//  Created by ARMBP on 6/7/24.
//

import SwiftUI

struct ContactsScreen: View {
    
    var body: some View {
        VStack(spacing: 20) {
            if !isDetail {
                HStack {
                    Text("Контакты")
                        .font(.subHead1)
                    Spacer()
                    Button {
                        //
                    } label: {
                        Image(systemName: "plus")
                            .font(.subHead1)
                            .foregroundStyle(Color.black)
                    }
                }
            }
            ScrollView(.vertical) {
                if isDetail, let detaiModel {
                    UserDetailScreen(userModel: detaiModel, isDetail: $isDetail)
                        .transition(.pivot)//кастомный переход
                } else {
                    VStack(spacing: .zero) {
                        SearchBar(prompt: "Search",
                                  text: $text,
                                  backgroundColor: .customLightGray,
                                  cornerRadius: 10,
                                  keyboardType: .default, height: 40, horizontalPadding: 0,
                                  onEditingChanged: { _ in },
                                  onXmarkClicked: {}
                        )
                        .padding(.bottom, 20)
                        
                        LazyVStack(alignment: .leading, spacing: 16) {
                            ForEach((0...10), id: \.self) { index in//сюда можно передавать модель из массива чатов
                                Button {
                                    detaiModel =  UserChatModel(id: 0,
                                                                image: "russianFlag",
                                                                name: "Алексей",
                                                                onlineStatus: .offline)
                                    withAnimation {
                                        isDetail = true
                                    }
                                    
                                } label: {
                                    UserChatsListCell(userChat: UserChatModel(id: 0,
                                                                              image: "russianFlag",
                                                                              name: "Алексей",
                                                                              onlineStatus: .offline))
                                    Divider()
                                        .hide(index == 10)
                                }
                            }
                        }
                        
                    }
                }
                
            }
            .scrollIndicators(.hidden)
            .background(Color.customBackground)
            .onTapGesture {
                hideKeyboard()
            }
        }
        .padding(20)
    }
    
    @State private var text: String = .init()
    @State private var isDetail: Bool = false
    @State private var detaiModel: UserChatModel? = nil
}

#Preview {
    ContactsScreen()
}



