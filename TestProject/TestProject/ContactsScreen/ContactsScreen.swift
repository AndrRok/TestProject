//
//  ContactsScreen.swift
//  TestProject
//
//  Created by ARMBP on 6/7/24.
//

import SwiftUI

struct ContactsScreen: View {
    @State private var text: String = .init()
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                SearchBar(prompt: "Search",
                          text: $text,
                          backgroundColor: .customLightGray,
                          cornerRadius: 10,
                          keyboardType: .default, height: 40, horizontalPadding: 0,
                          onEditingChanged: { _ in },
                          onXmarkClicked: {}
                )
                .padding(.bottom, 16)
                
                LazyVStack(alignment: .leading, spacing: 16) {
                    ForEach((0...10), id: \.self) { index in//сюда можно передавать модель из массива чатов
                        UserChatsListCell(userChat: UserChatModel(id: 0,
                                                                  image: "russianFlag",
                                                                  name: "Алексей",
                                                                  onlineStatus: .offline))
                        Divider()
                            .opacity(index == 10 ? 0 : 1)
                        
                    }
                }
            }
            .scrollIndicators(.hidden)
            .background(Color.accentColor)
            .padding(20)
        }
    }
}

#Preview {
    ContactsScreen()
}


