//
//  ProfileScreen.swift
//  TestProject
//
//  Created by ARMBP on 7/6/24.
//

import SwiftUI

struct ProfileScreen: View {
    
    @State private var isEditing: Bool = false
    
    var body: some View {
        switch isEditing {
            case false:
                UserDetailScreen(userModel: UserChatModel(id: 1,
                                                          image: "",
                                                          name: "",
                                                          onlineStatus: .online),
                                 isDetail: .constant(false),
                                 isEditing: $isEditing)
            default:
                ProfileEdtitingScreen(isEditing: $isEditing)
        }
    }
}

#Preview {
    ProfileScreen()
}
