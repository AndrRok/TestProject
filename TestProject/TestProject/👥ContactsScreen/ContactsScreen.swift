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
                    Text(Strings.contacts)
                        .font(.subHead1)
                        .foregroundStyle(Color.customLabelPrimary)
                    Spacer()
                    Button {
                        //
                    } label: {
                        Image(systemName: "plus")
                            .font(.subHead1)
                            .foregroundStyle(Color.customLabelPrimary)
                    }
                }
                .padding([.top, .horizontal], 20)
            }
            ScrollView(.vertical) {
                if isDetail, let detaiModel {
                    UserDetailScreen(userModel: detaiModel, isDetail: $isDetail)
                        .transition(.pivot)//кастомный переход
                } else {
                    VStack(spacing: .zero) {
                        SearchBar(prompt: Strings.search,
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
                                                                name: "Алексей",//mock
                                                                onlineStatus: .offline)
                                    withAnimation {
                                        isDetail = true
                                    }
                                    
                                } label: {
                                    VStack(alignment: .leading, spacing: 4) {
                                        UserChatsListCell(userChat: UserChatModel(id: 0,
                                                                                  image: "russianFlag",
                                                                                  name: "Алексей",//mock
                                                                                  onlineStatus: .offline))
                                        Divider()
                                            .hide(index == 10)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .scrollIndicators(.hidden)
            .padding(.horizontal, 20)
            .onTapGesture {
                hideKeyboard()
            }
        }
        .background(Color.customBackground)
    }
    
    @State private var text: String = .init()
    @State private var isDetail: Bool = false
    @State private var detaiModel: UserChatModel? = nil
}

#Preview {
    ContactsScreen()
}



